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
        sh '''docker --version'''
      }
    }

    stage('Build') {
      steps {
        sh '''docker build -f Dockerfile -t flask_project  .'''
      }
    }

  }
}