pipeline{
    agent any
    parameters{
        string(name:'tags',defaultValue:'',description:'Indique los tags')
        string(name:'port',defaultValue:'',description:'Indique el puerto')
    }
    evironment{
        image_name = "${tags}_tests"
        container_name="${port}-${tags}"
    }
    stages{
        stage('build container'){
            steps{
                script{
                    sh 'docker build -t ${image_name} .'
                }
            }
        }
        stage('run docker'){
            steps{
                script{
                    sh 'docker run --rm -it -p${port}:9000 --name ${container_name} ${image_name}'
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