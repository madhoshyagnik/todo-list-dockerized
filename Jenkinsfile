pipeline {
    agent {
        docker {
            image 'yagnikm/todopy:v1'
        }
    }

    stages {
        stage('Run Commands') {
            steps {
                script {
                    sh 'echo "Hello from inside the Docker container!"'
                    sh 'echo "Docker seems to be working"
                }
            }
        }
    }
}
