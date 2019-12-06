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
            agent { dockerfile true }
            steps {
                sh 'node --version'
                sh 'ls'
                sh 'openapi2apigee generateApi proxy-test -s swagger.yaml -d /opt'
            }
        }
    }
}
