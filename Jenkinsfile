pipeline {
  agent any

  stage('Build') {
    app = docker.build("jovanvelanac/assignment3")
   }

  stage('Push image') {
    docker.withRegistry('https://registry.hub.docker.com', 'docker-credentials')}
  app.push("latest")}
}
}
}
