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
                sh 'docker run -i --name prueba-test prueba'
            }
        }
        stage('run commands'){
            steps{
                sh 'pwd'
            }
        }
        stage('exit docker'){
            steps{
                sh 'exit'
            }
        }
        stage('final'){
            steps{
                sh 'cat "final feliz :D"'
            }
        }
    }
}