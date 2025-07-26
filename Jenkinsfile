pipeline {
    agent any

    environment {
        IMAGE_NAME = "cloudmonitorpro-image"
    }

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/Mangukiy/cloudmonitor-pro.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 3000:3000 --name cloudmonitorpro $IMAGE_NAME'
            }
        }
    }
}
