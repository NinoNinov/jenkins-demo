pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/NinoNinov/jenkins-demo.git'
            }
        }

        stage('Build Container') {
            steps {
                echo 'Building Docker image...'
                bat 'docker build -t myimage .'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests inside container...'
                sh 'docker run --rm myimage pytest'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Skipping deployment'
            }
        }
    }
}
