pipeline {
    agent any

    stages {
        stage('Ansible Test') {
            steps {
                ansibleAdhoc hosts: 'all', extras: '--list-hosts'
            }
        }
        stage('Ansible Update Servers') {
            steps {
                ansiblePlaybook inventory: 'inventory', playbook: 'playbook.yml'
            }
        }        
    }
}
