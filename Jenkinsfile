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
        sh 'docker build -t barttho/python_script:latest .'
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push barttho/python_script:latest'
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
    stage('wissen') {
      steps {
        sh 'docker rm dummy1'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}
