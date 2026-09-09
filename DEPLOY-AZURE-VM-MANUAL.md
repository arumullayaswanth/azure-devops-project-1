# Deployment to Azure VM (First Deployment)

This guide deploys the Maven/Tomcat web app (`webapp.war`) to an Ubuntu VM in Azure.
You create the VM from the Azure Portal, install the tools + Jenkins, then build and deploy.

---

## Part 1 — Create the VM in Azure Portal

1. Go to https://portal.azure.com → search **Virtual machines** → **Create** → **Azure virtual machine**.
2. Basics tab:
   - **Resource group**: create new, e.g. `rg-java-app`
   - **VM name**: `java-app-vm`
   - **Region**: pick one close to you
   - **Image**: `Ubuntu Server 24.04 LTS`
   - **Size**: `Standard_B2s` (2 vCPU, 4 GB)
   - **Authentication type**: SSH public key or Password
   - **Username**: `azureuser`
   - If SSH key: choose "Generate new key pair" and download the `.pem` file
3. Click **Review + create** → **Create**.
4. When done, open the VM and copy its **Public IP address**.

---

## Part 2 — Open the required ports

In the VM page → **Networking** → **Add inbound port rule**. Add these:

| Port | Purpose |
|------|---------|
| 22   | SSH |
| 8080 | Jenkins |
| 8090 | Tomcat / your app |

For each rule: Destination port ranges = the port, Protocol = TCP, Action = Allow.

---

## Part 3 — Connect to the VM

From your Windows machine (PowerShell or CMD):

```bash
ssh -i path\to\your-key.pem azureuser@<VM_PUBLIC_IP>
```

Then switch to root:

```bash
sudo su -
```

---

## Part 4 — Install the tools

### Update system
```bash
apt update && apt upgrade -y
```

### Install Java 21
```bash
apt install -y fontconfig openjdk-21-jdk
java -version
```

### Install Maven
```bash
apt install -y maven
mvn -version
```

### Install Git
```bash
apt install -y git
```

### Install Docker
```bash
apt install -y docker.io
systemctl enable --now docker
```

---

## Part 5 — Install Jenkins

### Add the Jenkins repository and install
```bash
apt install -y curl

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key | tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/" | tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

apt update
apt install -y jenkins
```

### Point Jenkins at Java 21
```bash
mkdir -p /etc/systemd/system/jenkins.service.d

printf '[Service]\nEnvironment="JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64"\nEnvironment="PATH=/usr/lib/jvm/java-21-openjdk-amd64/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"\n' | tee /etc/systemd/system/jenkins.service.d/override.conf

systemctl daemon-reload
systemctl enable --now jenkins
systemctl status jenkins
```

### Let Jenkins run Docker
```bash
usermod -aG docker jenkins
systemctl restart jenkins
```

### Unlock Jenkins
Open in browser: `http://<VM_PUBLIC_IP>:8080`

Get the initial admin password:
```bash
cat /var/lib/jenkins/secrets/initialAdminPassword
```
Paste it, install **suggested plugins**, then create your admin user.

---

## Part 6 — Deploy the app

### Option A — Manual Docker deploy

```bash
git clone https://github.com/arumullayaswanth/azure-devops-project-1.git app
cd app

docker build -t java-webapp .

docker run -d --name webapp -p 8090:8080 java-webapp
```

Open the app in browser: `http://<VM_PUBLIC_IP>:8090/webapp`

Tomcat manager: `http://<VM_PUBLIC_IP>:8090/manager`
When the sign-in popup appears, enter:
- **Username:** `admin`
- **Password:** `admin`

### Option B — Deploy via Jenkins pipeline

The `Jenkinsfile` builds the WAR **inside** the Docker image, so the pipeline does
not need Maven on the VM.

1. In Jenkins → **New Item** → name it `java-app` → **Pipeline** → OK.
2. Scroll to **Pipeline** section:
   - **Definition**: `Pipeline script from SCM`
   - **SCM**: `Git`
   - **Repository URL**: `https://github.com/arumullayaswanth/azure-devops-project-1.git`
   - **Branch Specifier**: `*/master`
   - **Script Path**: `Jenkinsfile`
3. Save → **Build Now**.

After the build succeeds, open the app at `http://<VM_PUBLIC_IP>:8090/webapp`.

---

## Quick reference

| Thing | URL / command |
|-------|---------------|
| Jenkins        | `http://<VM_PUBLIC_IP>:8080` |
| App            | `http://<VM_PUBLIC_IP>:8090/webapp` |
| Tomcat manager | `http://<VM_PUBLIC_IP>:8090/manager` (user `admin` / pass `admin`) |
| App logs       | `docker logs -f webapp` |
| Rebuild & redeploy | `docker rm -f webapp && docker build -t java-webapp . && docker run -d --name webapp -p 8090:8080 java-webapp` |
