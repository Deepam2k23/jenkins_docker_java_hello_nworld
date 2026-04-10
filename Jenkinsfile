// Jenkinsfile
pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'hello-world-java:latest'  // Docker image name
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Deepam2k23/jenkins_docker_java_hello_nworld.git'
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    if (fileExists('Dockerfile')) {
                        sh "docker build -t ${DOCKER_IMAGE} ."
                    } else {
                        error "Dockerfile not found in the workspace. Please create one for your Java application."
                    }
                }
            }
        }

        stage('Docker Run (Optional)') {
            steps {
                sh "docker run --rm ${DOCKER_IMAGE}"
            }
        }
    }
	post { 
		success { echo 'success' }
		failure { echo 'Failure' } 

	}
}
