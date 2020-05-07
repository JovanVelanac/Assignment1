pipeline {
   agent any

   tools {
    go { 'go-1.14.2' }
   }

   stages {
      stage('Testing phase') {
         steps {
GOOS='linux' CGO_ENABLED='0' GOARCH='amd64' go build -ldflags="-w -s" -o Assignment1
           sh 'go test'
         }
      }
      stage('Build') {
         steps {
GOOS='linux' CGO_ENABLED='0' GOARCH='amd64' go build -ldflags="-w -s" -o Assignment1
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
