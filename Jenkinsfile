pipeline {
   agent any


   tools {
    go { 'go-1.14.2' }
   }

   stages {
      stage('Testing phase') {
        environment {
        XDG_CACHE_HOME = '/tmp/.cache'
        GOOS='linux'
        CGO_ENABLED='0'
        GOARCH='amd64'
      } 
        steps {
           sh 'go test'
         }
}
      stage('Build') {
	environment {
        XDG_CACHE_HOME = '/tmp/.cache'
        GOOS='linux'
        CGO_ENABLED='0'
        GOARCH='amd64'
      }
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
