pipeline {
    agent none
    stages {
        stage('Back-end') {
            agent {
                docker { image 'maven:3-alpine' }
            }
            steps {
                sh 'mvn --version'
            }
        }
        stage('Build Proxy to Spec') {
            agent {
                docker { image 'chronos085/node-apigee:8-alpine' }
            }
            steps {
                sh 'node --version'
                sh 'openapi2apigee generateApi petStore -s http://petstore.swagger.io/v2/swagger.json -d /apigee'
            }
        }
    }
}
