pipeline {
    agent any 
    stages {
        stage('Clone') { 
            steps {
                    git credentialsId: 'github-token', url: 'https://github.com/siddxharth/go-app'
                }
            }
        stage('Run') { 
            steps {
                sh 'go run main.go'
            }
        }
    }
}