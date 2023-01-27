pipeline{
    environment{
        TEST = tags.replace("%20"," ");
    }
    agent any
    stages{
        stage('pwd'){
            steps{
                sh 'pwd'
            }
        }
        stage('create image'){
            steps{
                sh 'docker build -t prueba .'
            }
        }
        stage('run docker'){
            steps{
                sh 'docker run -d -p${port}:8090 -v /var/lib/jenkins/workspace/UDD:/home/automatizaciones --name ${name} prueba'
            }
        }
        stage('exec tests'){
            steps{
                sh 'docker exec ${name} mvn test -D cucumber.filter.tags="${TEST}"'
            }
        }
        stage('detener docker'){
            steps{
                sh 'docker stop ${name}'
            }
        }
        stage('eliminar docker'){
            steps{
                sh 'docker rm ${name}'
            }
        }
    }
}