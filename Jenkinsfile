pipeline{
    agent {
        docker { image 'ubuntu:latest' }
    }
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
                    sh 'docker-compose exec -it ubuntu-test_1 bash'
                }
            }
        }
    }
}