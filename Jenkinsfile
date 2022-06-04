pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile.build'
            label 'behave-agent'
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