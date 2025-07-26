pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/Mangukiy/cloudmonitor-pro.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t cloudmonitor-pro .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                    docker stop monitor || true
                    docker rm monitor || true
                    docker run -d -p 3000:3000 --name monitor cloudmonitor-pro
                '''
            }
        }
    }
}

