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
                sh 'docker run -d -v /home/felipe/Descargas/UDD-MatriculasWeb:/home/automatizaciones --name ${name}prueba-test prueba'
            }
        }
        stage('change directory'){
            steps{
                sh 'docker exec ${name}prueba-test cd /home/automatizaciones'
            }
        }
        stage('commands'){
            steps{
                sh 'docker exec ${name}prueba-test pwd'
            }
        }
    }
}