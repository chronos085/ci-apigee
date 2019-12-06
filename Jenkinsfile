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
                docker { image 'node:12-alpine' }
            }
            steps {
                sh 'node --version'
                sh 'chown -R 988:982 "/.npm"'
                sh 'npm install openapi2apigee'
                sh 'openapi2apigee generateApi proxy-test -s swagger.yaml -d /'
            }
        }
    }
}
