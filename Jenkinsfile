pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/saddamcoder/flask_development.git', branch: 'dev', credentialsId: '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')
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