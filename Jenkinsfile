pipeline {
    agent any

    stages {
        stage('Ansible List') {
            steps {
                ansibleAdhoc inventory: 'inventory', extras: '--list-hosts'
            }
            step {
                ansiblePlaybook inventory: 'inventory', playbook: 'playbook.yml'
            }
        }
        }
    }
}
