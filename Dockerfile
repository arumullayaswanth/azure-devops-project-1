#------------------------with tomcat image mavne need to be install and run goal before-------------
# we need to install mavne and run goal make it ready war file 
# FROM tomcat:latest
# RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
# COPY /webapp/target/*.war /usr/local/tomcat/webapps


#--------------------with mavne and tomcat images---------
#FROM maven:3.8.4-eclipse-temurin-17 AS build
#RUN mkdir /app
#WORKDIR /app
#COPY . .
#RUN mvn package

#FROM tomcat:latest
#COPY --from=build /app/webapp/target/webapp.war /usr/local/tomcat/webapps/webapp.war
#RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps



#--------------------Taking direct image maven and Tomcat on ubuntu------------------
# FROM ubuntu:latest as builder
# RUN apt-get update && \
#     apt-get install -y openjdk-8-jdk wget unzip

# ARG MAVEN_VERSION=3.9.6
# RUN wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz && \
#     tar -zxvf apache-maven-${MAVEN_VERSION}-bin.tar.gz && \
#     rm apache-maven-${MAVEN_VERSION}-bin.tar.gz && \
#     mv apache-maven-${MAVEN_VERSION} /usr/lib/maven

# ENV MAVEN_HOME /usr/lib/maven
# ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"
# ENV PATH=$MAVEN_HOME/bin:$PATH
# RUN mkdir -p /app
# COPY . /app
# WORKDIR /app
# RUN mvn install


# FROM tomcat:latest
# COPY --from=builder /app/webapp/target/webapp.war /usr/local/tomcat/webapps/webapp.war
# RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps



#-------------mavne and tomcat both on ubuntu -----------
#FROM maven:3.8.4-eclipse-temurin-17 AS build
# RUN mkdir /app
# WORKDIR /app
# COPY . .
# RUN mvn package


# #tomcat process 
# FROM ubuntu:20.04

# # Set environment variables
# ENV DEBIAN_FRONTEND=noninteractive

# # Install necessary packages
# RUN apt-get update && apt-get install -y \
#     openjdk-11-jdk \
#     wget \
#     curl \
#     && rm -rf /var/lib/apt/lists/*

# # Set the Java environment variables
# ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
# ENV PATH=$JAVA_HOME/bin:$PATH

# # Download and extract Tomcat (correcting the download and extraction paths)
# RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.102/bin/apache-tomcat-9.0.102.tar.gz -O /tmp/tomcat.tar.gz && \
#     mkdir /opt/tomcat && \
#     tar xzvf /tmp/tomcat.tar.gz -C /opt/tomcat --strip-components=1 && \
#     rm /tmp/tomcat.tar.gz

# # Set up Tomcat environment variables
# ENV CATALINA_HOME=/opt/tomcat
# ENV PATH=$CATALINA_HOME/bin:$PATH

# # Expose Tomcat port
# EXPOSE 8080

# # Copy the generated WAR file from the build stage
# COPY --from=build /app/webapp/target/webapp.war /opt/tomcat/webapps/webapp.war
# # Start Tomcat
# CMD ["/opt/tomcat/bin/catalina.sh", "run"]

#----------------maven and tomcate on ubuntu ------------------------



# === Stage 1: Build Java WAR using Maven ===
FROM ubuntu:20.04 AS build

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    openjdk-11-jdk \
    maven \
    wget \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

WORKDIR /app

COPY . .
RUN mvn clean package

# === Stage 2: Runtime with Tomcat and Manager GUI ===
FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    openjdk-11-jdk \
    wget \
    curl \
    && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Tomcat version
ENV TOMCAT_VERSION=9.0.95
ENV CATALINA_HOME=/opt/tomcat
ENV PATH=$CATALINA_HOME/bin:$PATH

# Download and setup Tomcat
RUN wget https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz -O /tmp/tomcat.tar.gz && \
    mkdir -p $CATALINA_HOME && \
    tar xzvf /tmp/tomcat.tar.gz -C $CATALINA_HOME --strip-components=1 && \
    rm /tmp/tomcat.tar.gz

# ✅ Setup Tomcat users for GUI access
RUN echo '<tomcat-users>' > $CATALINA_HOME/conf/tomcat-users.xml && \
    echo '  <role rolename="manager-gui"/>' >> $CATALINA_HOME/conf/tomcat-users.xml && \
    echo '  <role rolename="admin-gui"/>' >> $CATALINA_HOME/conf/tomcat-users.xml && \
    echo '  <role rolename="manager-script"/>' >> $CATALINA_HOME/conf/tomcat-users.xml && \
    echo '  <user username="admin" password="admin" roles="manager-gui,admin-gui,manager-script"/>' >> $CATALINA_HOME/conf/tomcat-users.xml && \
    echo '</tomcat-users>' >> $CATALINA_HOME/conf/tomcat-users.xml

# ✅ Remove IP restrictions in context.xml files
RUN sed -i '/<Valve className="org.apache.catalina.valves.RemoteAddrValve"/d' $CATALINA_HOME/webapps/manager/META-INF/context.xml || true
RUN sed -i '/<Valve className="org.apache.catalina.valves.RemoteAddrValve"/d' $CATALINA_HOME/webapps/host-manager/META-INF/context.xml || true

# Expose port
EXPOSE 8080

# ✅ Deploy WAR
COPY --from=build /app/webapp/target/webapp.war $CATALINA_HOME/webapps/webapp.war

# Start Tomcat
CMD ["catalina.sh", "run"]

