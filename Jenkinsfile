pipeline {
  agent any
  stages {
    stage('versie') {
      steps {
        sh '''
           python3 --version
         '''
      }
    } 
    stage('Stoppen van de container') {
      steps {
        sh 'docker container stop dummy1 || true'
      }
    }
    stage('Verwijderen van de container'){
      steps {
        sh 'docker container rm dummy1 || true'
      }
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
