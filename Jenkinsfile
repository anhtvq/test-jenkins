pipeline {

  environment {
    dockerimagename = "test-jenkins/app"
    dockerImage = ""
  }

  agent any

  stages {

    stage('Checkout Source') {
      steps {
        checkout scm
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
