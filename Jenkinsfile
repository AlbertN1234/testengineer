pipeline {
  agent any
  tools {
     maven 'M2_HOME'                /* that is the maven home, it is located on Global tool configuration */
  }
  environment {
    registry = "albernana/champion"     /* docker_hub_account/repository_name */
    registryCredential = 'DockerID'     /* dockerhub */
  }
  stages {
    stage('Build'){
      steps {
        sh 'mvn clean'              /* maven command to clean */
        sh 'mvn install'            /* maven command to install */
        sh 'mvn package'            /* maven command to package */
       }
    }
   stage('Test'){
      steps {
       echo "test step"
       sh 'mvn test'                
       }
   }
    stage('Deploy'){
      steps {
       script {
        docker.build registry + ":$BUILD_NUMBER"
       } 
      }
    }
  }
}
