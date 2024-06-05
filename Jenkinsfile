pipeline {
    agent any 
    stages {
        stage('Clone') { 
            steps {
                git url: 'g'
            }
        }
        stage('Run') { 
            steps {
                sh 'go run main.go'
            }
        }
    }
}