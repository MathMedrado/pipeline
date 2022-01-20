pipeline {  
    agent any
  
    stages {
        stage("build"){
            steps{
                echo "Buildando"
            }   
        } 
        stage("Conectando ao git"){
            steps{
                git branch: 'main', credentialsId: 'd95e380e-6b13-4326-854d-4e083ef271fa', url: 'https://github.com/MathMedrado/pipeline'
            }   
        } 
        stage("Listando os arquivos"){
            steps{
                sh 'docker ps -la'
            }   
        } 
    }
}

