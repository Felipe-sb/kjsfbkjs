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
                sh 'docker run -d -v /home/felipe/Descargas/UDD-MatriculasWeb:/home/automatozaciones --name ${name}prueba-test prueba'
            }
        }
        stage('change directory'){
            steps{
                sh 'cd /home/automatozaciones'
            }
        }
        stage('commands'){
            steps{
                sh 'docker exec prueba-test pwd'
            }
        }
    }
}