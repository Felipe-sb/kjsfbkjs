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
                sh 'docker run -d -p${port}:8090 -v /home/felipe/Descargas/UDD-MatriculasWeb:/home/automatizaciones --name ${name}prueba-test prueba'
            }
        }
        stage('chrome'){
            steps{
                sh 'docker exec ${name}prueba-test google-chrome --version'
            }
        }
        stage('exec tests'){
            steps{
                sh 'docker exec ${name}prueba-test mvn test -D cucumber.filter.tags="${tags}"'
            }
        }
        
    }
}