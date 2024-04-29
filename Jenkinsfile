pipeline {
    agent {
        label 'node1'
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Kaif1437/FulcrumPrac.git'
            }
        }
        stage('Execute Shell Script') {
            steps {
                try {
                    sh './your_script.sh'
                } catch (Exception e) {
                    error("Failed to execute shell script: ${e.message}")
                }
            }
        }
    }
}
