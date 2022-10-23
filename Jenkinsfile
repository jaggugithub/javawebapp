pipeline {
    agent any

	environment {
		DOCKERHUB_CREDENTIALS = credentials('dockerhub-accstoken')
		PATH = "/opt/apachemaven/bin:$PATH"
	}
	
	stages {
		stage('Build Java') {
			steps {
					sh 'mvn clean install'
			}
		}
		stage('Build Docker Image') {
			steps {
					sh 'docker build -t jaggu199/javawebapp:${BUILD_NUMBER} .'
			}
		}
        stage('Scan Docker Image') {
			steps {
					sh 'docker scan jaggu199/javawebapp:${BUILD_NUMBER}'
			}
		}
		stage('Push Docker Image') {
			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
				sh 'docker push jaggu199/javawebapp:${BUILD_NUMBER}'
			}
		}
	}
}