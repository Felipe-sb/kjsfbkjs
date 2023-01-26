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
                    sh 'docker run --rm -it -p${port}:9000 --name ${port}-busqueda_producto busqueda_producto_tests'
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