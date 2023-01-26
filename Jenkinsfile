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
        stage('ver directorio'){
            steps{
                script{
                    sh 'pwd'
                }
            }
        }
    }
}