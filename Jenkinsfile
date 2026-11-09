pipeline {
    agent any

    stages {
        stage('Connection Test') {
            steps {
                echo '================================'
                echo 'Successfully connected to GitHub!'
                echo 'Jenkins Pipeline is working.'
                echo '================================'
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
