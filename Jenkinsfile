pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Ansible List') {
            steps {
                ansibleAdhoc('all --list-hosts')
                }
        }        

    }
}
