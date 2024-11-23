pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/saddamcoder/flask_development.git', branch: 'dev')
      }
    }

    stage('list files') {
      steps {
        sh '''ls -la
docker --version
'''
      }
    }

    stage('Build') {
      steps {
        sh '''docker build -f Dockerfile .'''
      }
    }

  }
}