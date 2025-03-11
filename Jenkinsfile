pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', 
                url: 'https://github.com/dev-vivekkumarverma/Django_dummy_application.git'
            }
        }
        stage('List Files') {
            steps {
                sh 'ls -la'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'docker-compose build'
            }
        }
        
        // Uncomment if you want to run tests
        // stage('Run Tests') {
        //     steps {
        //         sh 'docker-compose run django_app python manage.py test'
        //     }
        // }
        
        stage('Deploy') {
            steps {
                sh '''
                docker-compose down --remove-orphans
                docker-compose up -d
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
