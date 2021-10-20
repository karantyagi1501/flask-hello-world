pipeline {
    
    agent any
    
    environment {
        registry = 'kt62495/flaskdemo'
        registryCredential = 'dockerhub_id'
        dockerImage =''
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/karantyagi1501/flask-hello-world.git']]])
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build registry
                }
            }
        }
        stage('Push Image') {
            steps {
                script {
                        docker.withRegistry( '', registryCredential ) {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
