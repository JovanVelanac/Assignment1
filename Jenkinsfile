pipeline {
   agent any


   stages {
      stage('Build') {
         steps {
           sh 'sudo docker build --tag jovanvelanac/assignment3 .'
         }
      }

      stage('Push image') {
         steps {
           docker.withRegistry('https://registry.hub.docker.com', 'docker-credentials')}}}}
