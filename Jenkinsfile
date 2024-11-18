pipeline {
    agent any

    stages {
        stage('Ansible List') {
            steps {
                ansibleAdhoc('all --list-hosts')
            }
        }
    }
}
