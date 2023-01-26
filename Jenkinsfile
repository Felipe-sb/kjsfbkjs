pipeline{
    agent any
    stages{
        stage('build container'){
            steps{
                script{
                    sh 'docker build -t busqueda_producto_tests .'
                }
            }
        }
        stage('run docker'){
            steps{
                script{
                    sh 'docker create -p${port}:9000 --name ${port}-busqueda_producto busqueda_producto_tests'
                }
            }
        }
        stage('start docker'){
            steps{
                script{
                    sh 'docker start ${port}-busqueda_producto'
                }
            }
        }
        stage('exec comands'){
            steps{
                script{
                    sh 'docker exec ${port}-busqueda_producto pwd'
                }
            }
        }
        stage('stop and remove docker'){
            steps{
                script{
                    sh 'docker stop ${port}-busqueda_producto'
                }
            }
        }
    }
}