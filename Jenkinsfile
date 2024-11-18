pipeline {
    agent any

    stages {
        stage('Ansible List') {
            steps {
                ansibleAdhoc('all --list-hosts')
                }
        }
        stage('Ansible Test') {
            step{
                ansiblePlaybook inventory: 'inventory', playbook: 'playbook.yml'
            }
        }     
    }
}
