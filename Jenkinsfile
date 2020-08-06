pipeline {
    agent any
    stages {
        stage('Build-Terra') {
            steps {
                sh "bash Jenkins/Build-kube.sh"
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
