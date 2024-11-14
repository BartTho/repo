pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Hello') {
            steps {
                ansibleAdhoc('all --list-hosts')
                }
        }        
        stage('Ansible Test'){
            step{
                ansiblePlaybook installation: 'Ansible2.16', inventory: '/', playbook: '/', vaultTmpPath: ''
            }
        }
    }
}
