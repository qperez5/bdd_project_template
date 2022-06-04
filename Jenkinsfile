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
                sh 'behave'
            }
        }
    }
}