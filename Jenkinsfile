pipeline {
    agent {
        docker {
            image 'yagnikm/todopy:v1'
            args '--user root -v /var/run/docker.sock:/var/run/docker.sock'
        }
    }

    stages {
        stage('Run Commands') {
            steps {
                script {
                    sh 'echo "Hello from inside the Docker container!"'
                }
            }
        }
    }
}
