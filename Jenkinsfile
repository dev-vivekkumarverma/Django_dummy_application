pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/dev-vivekkumarverma/Django_dummy_application.git'
            }
        }

        stage('Build and Run Container') {
            steps {
                script {
                    // sh 'usermod -aG docker jenkins'
                    sh 'docker --version'
                    sh 'docker-compose --version'
                    sh 'docker-compose down || true'  // Stop and remove old containers if they exist
                    sh 'ls'
                    sh 'docker-compose up -d --build' // Build and start the container
                }
            }
        }
    }
}
