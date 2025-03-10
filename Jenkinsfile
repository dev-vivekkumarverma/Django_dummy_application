pipeline {
    agent any

    environment {
        REPO_URL = 'https://github.com/dev-vivekkumarverma/Django_dummy_application.git'
        CONTAINER_NAME = 'django_app'
        IMAGE_NAME = 'django_app:latest'
    }

    stages {
        stage('Clone Repository') {
            steps {
                script {
                    sh 'rm -rf Django_dummy_application || true'
                    sh "git clone ${REPO_URL}"
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t ${IMAGE_NAME} Django_dummy_application/"
                }
            }
        }

        stage('Stop and Remove Old Container') {
            steps {
                script {
                    sh "docker stop ${CONTAINER_NAME} || true"
                    sh "docker rm ${CONTAINER_NAME} || true"
                }
            }
        }

        stage('Deploy New Container') {
            steps {
                script {
                    sh "docker run -d --name ${CONTAINER_NAME} -p 8000:8000 -v app_data:/app/data ${IMAGE_NAME}"
                }
            }
        }
    }

    post {
        success {
            echo "Deployment Successful!"
        }
        failure {
            echo "Deployment Failed!"
        }
    }
}
