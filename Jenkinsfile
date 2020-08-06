pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh "bash Jenkins/Build-kube.sh"
            }
        }
        stage('Deployment') {
            steps{
                sh "bash Jenkins/Kubernetes.sh"
            }
        }
    }
}
