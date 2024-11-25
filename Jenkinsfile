pipeline {
  agent { dockerfile true }
  stages {
    stage('versie') {
      steps {
        sh '''
           python --version
         '''
      }
    }
    
  }
}
