pipeline {
    agent any

    environment {
        IMAGE_NAME     = 'java-webapp'
        CONTAINER_NAME = 'webapp'
        APP_PORT       = '8080'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build WAR') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME:$BUILD_NUMBER -t $IMAGE_NAME:latest .'
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
                    docker rm -f $CONTAINER_NAME || true
                    docker run -d --name $CONTAINER_NAME -p $APP_PORT:8080 $IMAGE_NAME:latest
                '''
            }
        }
    }

    post {
        success {
            echo "Deployed. App at http://<VM_PUBLIC_IP>:${APP_PORT}/webapp"
        }
        failure {
            echo 'Build or deploy failed. Check the stage logs above.'
        }
    }
}
