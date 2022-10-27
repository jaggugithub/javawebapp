pipeline {
    agent any
    environment {
        PATH = "/opt/apachemaven/bin:$PATH"
    }
    stages {
        stage('SCM Checkout') {
            steps{
            git branch: 'main', credentialsId: 'GITHUB', url: 'git@github.com:jaggugithub/JavaWebApp.git'
            }
        }
        stage('Build Code') {
            steps {  
                sh "mvn clean install"
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
        stage('Run Container') {
            steps {
                sshagent(['DockerServer']) {
                    // This is to run a docker container which is on ubuntu machine(AWS)(Name:Docker Server) from jenkins pipeline
                    sh """ssh -tt -o StrictHostKeyChecking=no ubuntu@<target server public IP> << EOF
                        docker pull jaggu199/javawebapp:${BUILD_NUMBER}
                        docker stop webappcontainer
                        docker rm webappcontainer
                        docker run -d -p 8090:8080 --name webappcontainer jaggu199/webapp:$BUILD_NUMBER
                        exit
                        EOF"""
                }
                
            }
        }
    }
    // post {
    //     success {
    //         mail to: 'team@example.com',
    //         subject: "Success Pipeline: ${currentBuild.fullDisplayName}",
    //         body: "Your Build Is Successfull ${env.BUILD_URL}"
    //     }
    // }
}