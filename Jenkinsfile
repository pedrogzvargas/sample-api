pipeline {
    agent any

    environment {
    // artifact ID con repo e include del build number
        ARTIFACT_ID = 'sample-api:${BUILD_NUMBER}'
    }

    stages {
        stage('Connection Test') {
            steps {
                echo '================================'
                echo 'Successfully connected to GitHub!'
                echo 'Jenkins Pipeline is working.'
                echo '================================'
            }
        }
        stage('Build') {
              steps {
                script {
                  docker_image = docker.build(env.ARTIFACT_ID)
                }
              }
        }
    }

    post {
        success {
            echo 'Pipeline finished successfully!'
        }

        failure {
            echo 'Pipeline execution failed!'
        }
    }
}
