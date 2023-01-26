pipeline{
    agent any
    stages{
        stage('build container'){
            steps{
                script{
                    sh 'docker build -t ${tags}_tests .'
                }
            }
        }
        stage('run docker'){
            steps{
                script{
                    sh 'docker run --rm -it -p${port}:9000 --name ${port}-${tags} ${tags}_tests'
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