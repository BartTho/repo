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
                ansibleAdhoc(all --list-hosts)
                }
        }        
        stage('Ansible Test'){
            step{
                ansiblePlaybook installation: 'Ansible2.16', inventory: '/', playbook: '/', vaultTmpPath: ''
            }
        }
    }
}
