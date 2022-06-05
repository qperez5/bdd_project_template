pipeline {
    agent any
    stages {
        stage('Run behave tests') {
            agent {
                dockerfile {
                    filename 'Dockerfile.build'
                    reuseNode true
                }
            }
            steps {
                sh 'behave --junit'
            }
        }
        stage('Generate test report') {
            steps {
                junit 'reports/*.xml'
            }
        }
    }
}