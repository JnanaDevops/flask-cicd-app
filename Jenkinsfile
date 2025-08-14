pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/JnanaDevops/flask-cicd-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker-compose build'
                }
            }
        }

        stage('Deploy Container') {
            steps {
                script {
                    // Stop and remove previous container if exists
                    sh 'docker-compose down || true'
                    // Start new container
                    sh 'docker-compose up -d'
                }
            }
        }
    }

    post {
        success {
            echo 'Flask app deployed successfully!'
        }
        failure {
            echo 'Build or deployment failed.'
        }
    }
}

