pipeline {
    agent any

    environment {
        EC2_IP = '18.117.183.104'
        USER = 'ubuntu'
        KEY_PATH = '/var/lib/jenkins/.ssh/privatekey.pem' // Updated path on Jenkins EC2
        IMAGE_NAME = 'myimage-1'
        CONTAINER_NAME = 'my-container-1'
        DOCKER_PORT = '81:80'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/Madhu-123-bot/Mithra-project-2-qspider.git'
            }
        }

        stage('Copying the files to NGINX Server') {
            steps {
                sh """
                ssh -i $KEY_PATH -o StrictHostKeyChecking=no ${USER}@${EC2_IP} 'rm -rf /var/www/nodeapp/*'
                scp -i $KEY_PATH -o StrictHostKeyChecking=no -r * ${USER}@${EC2_IP}:/var/www/nodeapp/
                """
            }
        }

        stage('Build Docker Image') {
            steps {
                sh """
                ssh -i $KEY_PATH -o StrictHostKeyChecking=no ${USER}@${EC2_IP} "
                cd /var/www/nodeapp &&
                docker build -t $IMAGE_NAME .
                "
                """
            }
        }

        stage('Run Docker Container') {
            steps {
                sh """
                ssh -i $KEY_PATH -o StrictHostKeyChecking=no ${USER}@${EC2_IP} "
                docker rm -f $CONTAINER_NAME || true &&
                docker run -d --name $CONTAINER_NAME -p $DOCKER_PORT $IMAGE_NAME
                "
                """
            }
        }
    }

    post {
        always {
            echo 'Deployment completed!'
        }
    }
}
