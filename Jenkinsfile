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

    stage('Build image') {
      steps{
        script {
          dockerImage = docker.build dockerimagename
        }
      }
    }

    stage('Deploying App container to Kubernetes') {
      steps {
        script {
          kubernetesDeploy(configs: "tomcat_webadmin.yaml", "tomcat_webadmin_service.yaml")
        }
      }
    }

  }

}
