pipeline {

  environment {
    dockerimagename = "test-jenkins/app"
    dockerImage = ""
  }

  agent any

  stages {

    stage('Checkout Source') {
      steps {
        git 'https://github.com/anhtvq/test-jenkins.git'
      }
    }


  }

}
