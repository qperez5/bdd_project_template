pipeline {
    agent any
    parameters {
        booleanParam(name: 'RUN_BLOCK_1', defaultValue: true, description: 'Ejecutar bloque 1')
        booleanParam(name: 'RUN_BLOCK_2', defaultValue: true, description: 'Ejecutar bloque 2')
    }
    stages {
        stage('Run behave tests') {
            parallel {
                stage('Run behave tests 1') {
                    agent {
                        dockerfile {
                            filename 'Dockerfile.build'
                            reuseNode true
                        }
                    }
                    when {
                        expression {
                            return params.RUN_BLOCK_1
                        }
                    }
                    steps {
                        //sh 'behave --junit'
                        sh 'behave -f allure_behave.formatter:AllureFormatter -o reports'
                        //sh 'tree'
                    }
                }
                stage('Run behave tests 2') {
                    agent {
                        dockerfile {
                            filename 'Dockerfile.build'
                            reuseNode true
                        }
                    }
                    when {
                        expression {
                            return params.RUN_BLOCK_2
                        }
                    }
                    steps {
                        //sh 'behave --junit'
                        sh 'behave -f allure_behave.formatter:AllureFormatter -o reports'
                        //sh 'tree'
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