pipeline {
    agent any
    stages {
        stage('Build'){
            steps {
                sh "bash Jenkins/Build.sh"
            }
        stage('Deploy') {
            steps {
                sh "bash Jenkins/Docker-compose.sh"
            }
        }

           }
}
