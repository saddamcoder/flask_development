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
        sh '''ls -la'''
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