pipeline {
    agent any
    stages {
        stage('Build-Terra') {
            steps {
                sh "bash Jenkins/install-terraform.sh"
            }
        }
        stage('Install Docker-compose'){
            steps {
                sh "bash Jenkins/install-docker-compose.sh"
            }
        }
        stage('Deploy Terraform'){
            steps {
                sh "bash Jenkins/Build.sh"
            }
        }
        stage('Build-Image') {
            steps {
                sh "bash Jenkins/Build-image.sh"
            }
        }
        stage('Deployment') {
            steps{
                sh "bash Jenkins/Kubernetes.sh"
            }
        }
    }
}
