pipeline {
    agent docker {
        image 'python:3.10.4-slim'
    }
    stages {
        stage('Run behave tests') {
            steps {
                sh 'pip install -r requirements.txt'
                sh 'behave'
            }
        }
    }
}