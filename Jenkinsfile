pipeline {
   agent any

   tools {
    go { 'go-1.2' }
   }

   stages {
      stage('Build') {
         steps {
           sh 'go build'
         }
      }
      stage('Publish artifact') {
         steps {
           archiveArtifacts 'example1'
         }
      }
   }
}
