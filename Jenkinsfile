pipeline{
    agent any
    stages{
        stage('run docker'){
            steps{
                script{
                    sh 'docker-compose up -d --build'
                }
            }
        }
        stage('run logs'){
            steps{
                script{
                    sh 'docker-compose logs'
                }
            }
        }
    }

}