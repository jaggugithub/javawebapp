pipeline {
    agent any
    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/jaggugithub/webappconfig.git'
            }
        }
        stage('Install Docker') {
            steps {
                ansiblePlaybook credentialsId: 'WebappServers', disableHostKeyChecking: true, installation: 'Ansible', inventory: 'aws_ec2.yaml', playbook: 'installdocker.yaml'
            }
        }
    } 