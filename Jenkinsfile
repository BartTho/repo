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
                ansiblePlaybook inventory: 'inventory', extras: 'ansible_sudo_pass=Top.Secret', playbook: 'playbook.yml'
            }
        }        
    }
}
