pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile.build'
        }
    }
    stages {
        stage('Run behave tests') {
            steps {
                sh 'behave'
            }
        }
    }
}