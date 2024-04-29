pipeline {
    agent {
        label 'node1'
    }
    stages {
        stage('Execute Shell Script') {
            steps {
                script {
                    try {
                        // Checkout code from Git repository implicitly by executing the shell script
                        sh 'git clone https://github.com/Kaif1437/FulcrumPrac.git'
                        // Run shell script
                        sh './FulcrumPrac/your_script.sh'
                    } catch (Exception e) {
                        error("Failed to execute shell script: ${e.message}")
                    }
                }
            }
        }
    }
}

