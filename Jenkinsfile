node {
  printMessage("Pipeline start")

  stage('Clone repository') {
    checkout scm
  }

  stage("Trigger unit tests") {
    sh 'python3 test_functions.py' 
  }
  
  stage('Build image') {
    app = docker.build("gipakos/pipeline3")
  }
  
  stage('Push image') {
    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
      app.push("latest")
    }
  }

  printMessage("Pipeline end")
}

def printMessage(message) {
  echo "${message}"
}
