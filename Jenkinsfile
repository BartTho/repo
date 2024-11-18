pipeline {
    agent any

    stages {
        stage('Ansible List') {
            step {
                ansiblePlaybook inventory: 'inventory', playbook: 'playbook.yml'
            }
        }
    }
}
