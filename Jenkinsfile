pipeline {
    agent any

    stages {

        stage('Clone') {
    steps {
        git branch: 'main',
            url: 'https://github.com/Tammeswar/new-project.git'
    }
}


        stage('Maven Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh '''
                docker stop contnr || true
                docker rm contnr || true
                '''
            }
        }

        stage('Remove Old Image') {
            steps {
                sh 'docker rmi img || true'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t img .'
            }
        }

        stage('Docker Deploy') {
            steps {
                sh 'docker run -d -p 6060:8080 --name contnr img'
            }
        }
    }
}
