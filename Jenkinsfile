pipeline {
    agent any 
    stages {
        stage('Clone') { 
            steps {
                withCredentials([usernamePassword(credentialsId: 'github-token', usernameVariable: 'GIT_USERNAME', passwordVariable: 'GIT_PASSWORD')]) {
                    // Git checkout or other operations using the bound credentials
                    git url: 'https://github.com/siddxharth/go-app'
                }
            }
        }
        stage('Run') { 
            steps {
                sh 'go run main.go'
            }
        }
    }
}