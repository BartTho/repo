pipeline {
  agent { dockerfile true }
  stages {
    stage('Build') {
      steps {
        sh '''
           python --version
         '''
      }
    }
    stage('docker_cp') {
      steps {
        sh 'docker cp dummy1:/app/sinus.png .'
      }
    }
  }
}
