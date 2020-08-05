pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh "bash Jenkins/Build.sh"
            }
        }
        stage('Test') {
            steps{
                sh "bash Jenkins/Test.sh"
            }
        }
        stage('Deploy') {
            steps {
                sh "bash Jenkins/Deploy.sh"
            }
        }
    }
}