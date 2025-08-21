pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/NinoNinov/jenkins-demo.git'
            }
        }
        stage('Build Container') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t myapp:latest .'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests inside container...'
                sh 'docker run --rm myapp:latest pytest'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Skipping deployment'
            }
        }
    }
}
