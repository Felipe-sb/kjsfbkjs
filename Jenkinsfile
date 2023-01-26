pipeline{
    agent {
        docker { image 'ubuntu:latest' }
    }
    stages{
        stage('run docker'){
            steps{
                sh 'docker-compose up -d --build'
                sh 'docker-compose exec -d ubuntu-test pwd'
            }
        }
    }
}