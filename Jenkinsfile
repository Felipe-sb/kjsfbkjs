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
                sh 'docker run -d -p${port}:8090 -v /home/felipe/Descargas/${ruta}:/home/automatizaciones --name ${name} prueba'
            }
        }
        stage('exec tests'){
            steps{
                sh 'docker exec ${name} mvn test -D cucumber.filter.tags="${tags}"'
            }
        }
        
    }
}