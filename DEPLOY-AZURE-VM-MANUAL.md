#  Deployment to Azure VM (First Deployment)

This guide deploys the Maven/Tomcat web app (`webapp.war`) to an Ubuntu VM in Azure.
You create the VM from the Azure Portal (UI), install the tools + Jenkins manually,
then build and deploy.

---

## Part 1 — Create the VM in Azure Portal (UI)

1. Go to https://portal.azure.com → search **Virtual machines** → **Create** → **Azure virtual machine**.
2. Basics tab:
   - **Resource group**: create new, e.g. `rg-java-app`
   - **VM name**: `java-app-vm`
   - **Region**: pick one close to you
   - **Image**: `Ubuntu Server 22.04 LTS`
   - **Size**: `Standard_B2s` (2 vCPU, 4 GB) — Jenkins + Docker + Maven need memory
   - **Authentication type**: SSH public key (recommended) or Password
   - **Username**: `azureuser`
   - If SSH key: choose "Generate new key pair" and download the `.pem` file
3. **Disks / Networking**: leave defaults for now (we open ports next).
4. Click **Review + create** → **Create**.
5. When done, go to the VM and copy its **Public IP address**.

---

## Part 2 — Open the required ports (NSG)

In the VM page → **Networking** → **Add inbound port rule**. Add these:

| Port | Purpose        |
|------|----------------|
| 22   | SSH (usually already open) |
| 8080 | Tomcat / your app |
| 8081 | Jenkins (we'll use this port to avoid clashing with Tomcat) |

For each rule: Destination port ranges = the port, Protocol = TCP, Action = Allow.

---

## Part 3 — Connect to the VM

From your Windows machine (PowerShell or CMD):

```bash
ssh -i path\to\your-key.pem azureuser@<VM_PUBLIC_IP>
```

If you used a password instead:

```bash
ssh azureuser@<VM_PUBLIC_IP>
```

---

## Part 4 — Install tools on the VM

Run these on the VM (Ubuntu).

### Update system
```bash
sudo apt update && sudo apt upgrade -y
```

### Install Java 11
```bash
sudo apt install -y openjdk-11-jdk
java -version
```

### Install Maven
```bash
sudo apt install -y maven
mvn -version
```

### Install Git
```bash
sudo apt install -y git
```

### Install Docker (used by your Dockerfile)
```bash
sudo apt install -y docker.io
sudo systemctl enable --now docker
sudo usermod -aG docker azureuser
# log out and back in for the docker group to take effect
```

---

## Part 5 — Install Jenkins

```bash
# Jenkins needs Java (already installed above)
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/" | \
  sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update
sudo apt install -y jenkins
```

### Change Jenkins port to 8081 (so Tomcat can keep 8080)
```bash
sudo sed -i 's/HTTP_PORT=8080/HTTP_PORT=8081/' /etc/default/jenkins 2>/dev/null || true

# On newer Jenkins (systemd override):
sudo mkdir -p /etc/systemd/system/jenkins.service.d
echo -e "[Service]\nEnvironment=\"JENKINS_PORT=8081\"" | \
  sudo tee /etc/systemd/system/jenkins.service.d/override.conf

sudo systemctl daemon-reload
sudo systemctl enable --now jenkins
sudo systemctl restart jenkins
```

### Let Jenkins run Docker
```bash
sudo usermod -aG docker jenkins
sudo systemctl restart jenkins
```

### Unlock Jenkins
Open in browser: `http://<VM_PUBLIC_IP>:8081`

Get the initial admin password:
```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```
Paste it, install **suggested plugins**, create your admin user.

---

## Part 6 — Deploy the app

You have two options. Start with Option A to confirm it works, then automate with Jenkins (Option B).

### Option A — Manual Docker deploy (fastest to verify)

```bash
# clone your repo (or upload the project folder)
git clone <YOUR_REPO_URL> app
cd app

# build the image (uses your existing Dockerfile)
docker build -t java-webapp .

# run it, mapping container 8080 -> VM 8080
docker run -d --name webapp -p 8080:8080 java-webapp
```

Open in browser: `http://<VM_PUBLIC_IP>:8080/webapp`

Tomcat manager (from your Dockerfile) is at `http://<VM_PUBLIC_IP>:8080/manager` (user `admin` / pass `admin`).

> Change the manager password before any real/public use — the Dockerfile ships default credentials.

### Option B — Deploy via Jenkins pipeline

1. In Jenkins → **New Item** → name it `java-app` → **Pipeline** → OK.
2. Under **Pipeline**, choose "Pipeline script" and paste the script from
   `Jenkinsfile` (created for you in the repo root).
3. Save → **Build Now**.

---

## Quick reference

| Thing            | URL / command |
|------------------|---------------|
| App              | `http://<VM_PUBLIC_IP>:8080/webapp` |
| Tomcat manager   | `http://<VM_PUBLIC_IP>:8080/manager` |
| Jenkins          | `http://<VM_PUBLIC_IP>:8081` |
| View app logs    | `docker logs -f webapp` |
| Rebuild & redeploy | `docker rm -f webapp && docker build -t java-webapp . && docker run -d --name webapp -p 8080:8080 java-webapp` |
