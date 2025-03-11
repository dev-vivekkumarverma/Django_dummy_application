pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', 
                    url: 'https://github.com/dev-vivekkumarverma/Django_dummy_application.git'
            }
        }
        
        stage('List All Files') {
            steps {
                sh 'ls -la'
            }
        }
        
        // stage('Install Dependencies') {
        //     steps {
        //         sh 'docker-compose build'
        //     }
        // }
        
        // Uncomment if you want to run tests before deployment
        // stage('Run Tests') {
        //     steps {
        //         sh 'docker-compose run django_app python manage.py test'
        //     }
        // }

        stage('remove the older container') {
            steps {
                sh 'docker-compose down || true'
            }
        }
        
        stage('Build & Deploy') {
            steps {
                sh '''
                docker-compose up --build
                '''
            }
        }
    }
    
    post {
        always {
            cleanWs()
        }
    }
}
