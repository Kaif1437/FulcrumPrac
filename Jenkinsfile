pipeline {
    agent {
        label 'node1'
    }

    stages {
        stage('Install Nginx on Host Server') {
            steps {
                sh 'ssh kaif@192.168.225.172 "sudo apt update && sudo apt install -y nginx"'
            }
        }
        stage('Update Index.html') {
            steps {
                sh 'ssh kaif@192.168.225.172 "echo \'<!DOCTYPE html><html><head><title>Welcome</title></head><body><h1><strong>WELCOME TO FULCRUM</strong></h1></body></html>\' | sudo tee /var/www/html/index.html"'
            }
        }
        stage('Restart Nginx') {
            steps {
                sh 'ssh kaif@192.168.225.172 "sudo systemctl restart nginx"'
            }
        }
    }
}
