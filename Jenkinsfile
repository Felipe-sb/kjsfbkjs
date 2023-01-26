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
        stage('run log'){
            steps{
                script{
                    sh 'docker-compose logs'
                }
            }
        }
    }
}