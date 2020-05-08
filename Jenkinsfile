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

	}
      stage('Publish artifact') {
         steps {
           archiveArtifacts 'Assignment1'
         }
      }
      stage('Integration Test') {
         steps {
	    sh 'docker run -t postman/newman:latest run "https://www.getpostman.com/collections/e28663e6208d00ce79d5"'
		}
}
   }
}
