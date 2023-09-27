pipeline {
    agent any 

    stages {
        stage('build and push image') {
            steps {
                echo "build and push docker image"
                withCredentials([usernamePassword(credentialsId: 'docker-hub-django', passwordVariable: 'PASS', usernameVariable: 'USER')]) {
                    sh 'docker build -t jitendrapalei/django:1.0 .'
                    sh "echo $PASS | docker login -u $USER --password-stdin"
                    sh 'docker push jitendrapalei/django:1.0'

                }
            }
        }
        stage('Deploy') {
            steps {
                echo "Deploy docker image to ec2"
            }
        }
    }
    
    
}