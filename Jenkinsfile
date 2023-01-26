pipeline{
    agent any
    stages{
        stage('create image'){
            steps{
                sh 'docker build -t prueba .'
            }
        }
        stage('run docker'){
            steps{
                sh 'docker run -d --name ${tags.toLowerCase()}prueba-test prueba'
            }
        }
        stage('commands'){
            steps{
                sh 'docker exec prueba-test pwd'
            }
        }
    }
}