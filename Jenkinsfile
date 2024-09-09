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

        stage('SSH into EC2 and Manage Docker') {
            steps {
                script {
                    sshagent(['95e27d25-b0ab-464c-8ee0-7d67979f8859']) {
                        sh """
                            ssh -o StrictHostKeyChecking=no ubuntu@13.200.251.102'
                                sudo apt update -y &&
                                sudo apt install docker.io -y &&
                                sudo su - &&
                                usermod -aG docker jenkins &&
                                usermod -aG docker ubuntu &&
                                systemctl restart docker &&
                                sudo docker pull yagnikm/todopy:v1 &&
                                sudo docker run --rm yagnikm/todopy:v1 sh -c "echo Hello from inside the Docker container!"
                            '
                        """
                    }
                }
            }
        }
    }
}
