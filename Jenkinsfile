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
        stage('run commands'){
            steps{
                script{
                    sh 'docker-compose exec -d ubuntu-test mvn --version'
                }
                script{
                    sh 'docker-compose logs'
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