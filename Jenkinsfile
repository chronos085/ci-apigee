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
                docker { image 'node' }
            }
            steps {
                sh 'node --version'
                sh 'sudo npm install openapi2apigee'
                sh 'openapi2apigee generateApi proxy-test -s swagger.yaml -d /'
            }
        }
    }
}
