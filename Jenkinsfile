pipeline {
  agent any
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('barttho-dockerhub')
  }
  stages {
    stage('Build') {
      steps {
        sh './scripts/build.sh'
      }
    }
    stage('Login') {
      steps {
        sh './scripts/login.sh'
      }
    }
    stage('Push') {
      steps {
        sh './scripts/push.sh'
      }
    }
    stage('docker_run') {
      steps {
        sh 'docker run -d --name dummy1 test:1.01.1'
      }
    }
    stage('docker_cp') {
      steps {
        sh 'docker cp dummy1:/app/sinus.png .'
      }
    }
    stage('wissen') {
      steps {
        sh 'docker rm dummy1'
      }
    }
  }
  post {
    always {
      sh './scripts/logout.sh'
    }
  }
}
