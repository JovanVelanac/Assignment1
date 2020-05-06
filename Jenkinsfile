pipeline {
   agent any

   tools {
    go { 'go-1.14.2' }
   }

   stages {
      stage('Testing phase') {
         steps {
           sh 'go test'
         }
      }
      stage('Build') {
         steps {
           sh 'go build -o Assignment1'
         }
      }
      stage('Publish artifact') {
         steps {
           archiveArtifacts 'Assignment1'
         }
      }
   }
}
