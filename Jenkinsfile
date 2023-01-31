pipeline {
    agent {
        label "master"
    }
    stages {
        stage('Docker-Build') {
            environment {
                DOCKER_REGISTRY = '******'
                DOCKER_IMAGE = '*****'
                DOCKER_USER = '*****'
                DOCKER_PASSWORD = '*****'
            }
            steps {
                echo 'Building Docker image'
                sh 'docker version'
                sh 'echo $DOCKER_PASSWORD | docker login -u $DOCKER_USER --password-stdin $DOCKER_REGISTRY'
                sh 'docker build -t $DOCKER_IMAGE -f Dockerfile .'
                echo 'Pushing Docker image'
                sh 'docker push $DOCKER_IMAGE'
            }
        }          
        stage('deploy no appservice/azure') {
            steps {
                script {
                    withCredentials([
                        string(credentialsId: 'AZ_USER', variable: 'azuser'),
                        string(credentialsId: 'AZ_PASS', variable: 'azpass'),
                        string(credentialsId: 'AZ_TENANT', variable: 'aztenant'),
                    ]) { 
                    sh 'az login --service-principal --username $azuser --password $azpass --tenant $aztenant '   
                    sh 'az webapp config container set --name ***** --resource-group ***** --docker-custom-image-name *****' 

                    }
                    
                }  

            }
            
        }
    }
}

