pipeline{
    agent any
    stages{
        stage('build container'){
            steps{
                script{
                    sh 'docker build -t image-test .'
                }
            }
        }
        stage('run docker'){
            steps{
                script{
                    sh 'docker run --rm --tty -p${port}:9000 --name prueba-test image_test bash'
                }
            }
        }
        stage('ver directorio'){
            steps{
                script{
                    sh 'pwd'
                }
            }
        }
    }
}