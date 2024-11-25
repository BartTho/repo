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
    stage('Stoppen en verwijderen oude container') {
      steps {
        sh 'docker container stop dummy1 || true'
      }
      steps {
        sh 'docker container rm dummy1 || true'
      }
    }  
  }
}
