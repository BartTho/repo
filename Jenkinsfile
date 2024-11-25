pipeline {
  agent { dockerfile true }
  stages {
    stage('versie') {
      steps {
        sh '''
           python --version
         '''
      }
    stage('Build') {
      steps {
        sh 'docker build -t barttho/python_script:latest .'
      }
    }   
    stage('docker_run') {
      steps {
        sh 'docker run -d --name dummy1 barttho/python_script'
      }
    }
    stage('docker_cp') {
      steps {
        sh 'docker cp dummy1:/app/sinus.png .'
      }
    }                 
  }
}
}
