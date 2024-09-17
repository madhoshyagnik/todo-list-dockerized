// pipeline {
//   agent {
//     docker {
//       image 'yagnikm/todopy:v1'
//       args '--user root -v /var/run/docker.sock:/var/run/docker.sock' // mount Docker socket to access the host's Docker daemon
//     }
//   }
//   stages {
//     stage('Checkout') {
//       steps {
//         sh 'echo passed'
//         //git branch: 'main', url: 'https://github.com/madhoshyagnik/todo-list-dockerized.git'
//       }
//     }

//     stage('Test Docker') {
//       steps {
//         sh 'echo "Docker container is running"'
//         sh 'docker --version'
//       }
//     }
    
//     stage('Build and Test') {
//       steps {
//         sh 'ls -ltr'
//         // nothing to build as it's a python app
//         sh 'echo "Build sucessfull"'
//       }
//     }

//     stage('Build and Push Docker Image') {
//       environment {
//         DOCKER_IMAGE = "yagnikm/todopy:${BUILD_NUMBER}"
//         // DOCKERFILE_LOCATION = "java-maven-sonar-argocd-helm-k8s/spring-boot-app/Dockerfile"
//         REGISTRY_CREDENTIALS = credentials('docker-cred')
//       }
//       steps {
//         script {
//             sh 'docker build -t ${DOCKER_IMAGE} .'
//             def dockerImage = docker.image("${DOCKER_IMAGE}")
//             docker.withRegistry('https://index.docker.io/v1/', "docker-cred") {
//                 dockerImage.push()
//             }
//         }
//       }
//     }
//     stage('Update Deployment File') {
//         environment {
//             GIT_REPO_NAME = "todo-list-dockerized"
//             GIT_USER_NAME = "madhoshyagnik"
//         }
//         steps {
//             withCredentials([string(credentialsId: 'github', variable: 'GITHUB_TOKEN')]) {
//                 sh '''
//                     git config user.email "madhosh1yagnik@gmail.com"
//                     git config user.name "madhoshyagnik"
//                     BUILD_NUMBER=${BUILD_NUMBER}
//                     sed -i "s/replaceImageTag/${BUILD_NUMBER}/g" jenkins-updated-manifests/deployment.yaml
//                     git add jenkins-updated-manifests/deployment.yaml
//                     git commit -m "Update deployment image to version ${BUILD_NUMBER}"
//                     git push https://${GITHUB_TOKEN}@github.com/${GIT_USER_NAME}/${GIT_REPO_NAME} HEAD:main
//                 '''
//             }
//         }
//     }
//   }
// }
