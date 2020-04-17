pipeline {
    agent {
        docker { image 'golang:1.14' }
    }
    stages {
        stage('Package') {
            steps {
                sh 'go get github.com/revel/revel'
                sh 'go get github.com/revel/cmd/revel'
                sh 'revel build . prod'
            }
        }
    }
}