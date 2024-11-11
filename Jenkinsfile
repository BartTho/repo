pipeline {
    agent any
    
    stages {
        stage('Stop oude container') {
            steps {
                sh 'echo "Oude container stoppen, als error zal de true ervoor zorggen dat we geen fout krijgen"'
                sh 'docker stop demo04 || true'
            }
        }
        stage('Verwijder oude container') {
            steps {
                sh 'docker rm demo04 || true'
            }
        }
        stage('Verwijder oud image') {
            steps {
                sh 'docker rmi demo04 || true'
            }
        }
        stage('Git') {
            steps {
                git 'https://github.com/BartTho/Jenkins.git'
            }
        }
        stage('Build') {
            steps {
            sh 'docker build -t demo04:latest .'
            }
        }
        stage('Run') {
            steps {
                sh 'docker run -p 80:80 --detach --name demo04 demo04:latest'
            } 
        }
        stage('Process') {
            steps {
                sh 'docker ps'
            } 
        }
    }
}
