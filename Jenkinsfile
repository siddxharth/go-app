pipeline {
    agent any 
    stages {
        stage('Clone') { 
            steps {
                    git credentialsId: 'github-token', url: 'https://github.com/siddxharth/go-app'
                }
            }
        stage('Lint') {
            steps {
                sh 'curl -sSfL \'https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh\' | sh -s -- -b $(go env GOPATH)/bin v1.52.2'
                sh '''
                    export PATH=$PATH:$(go env GOPATH)/bin
                    golangci-lint run ./...
                '''
            }
        }
        stage('Test') {
            steps {
                sh 'go test ./' //Run test files in the directory (if any)
            }
        }
        stage('Run') { 
            steps {
                sh 'go run main.go'
            }
        }
    }
}