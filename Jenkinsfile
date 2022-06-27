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
            parallel {
                stages {
                    stage('Run behave tests 1') {
                        steps {
                            //sh 'behave --junit'
                            sh 'behave -f allure_behave.formatter:AllureFormatter -o reports'
                            //sh 'tree'
                        }
                    }
                    stage('Run behave tests 2') {
                        steps {
                            //sh 'behave --junit'
                            sh 'behave -f allure_behave.formatter:AllureFormatter -o reports'
                            //sh 'tree'
                        }
                    }
                }
            }
        }
        stage('Generate test report') {
            steps {
                //junit 'reports/*.xml'
                allure results: [[path: 'reports']]
            }
        }
    }
}