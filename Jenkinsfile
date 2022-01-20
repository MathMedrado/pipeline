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
        stage("build"){
            steps{
                sh 'docker build . -t matheusmedrado2020/pipeline-test:latest'
            }   
        } 
        stage("deployment"){
            steps{
                sh 'docker login -u matheusmedrado2020 -p marcospaulo14'
                sh 'dock push -t matheusmedrado2020/pipeline-test:latest'
            }   
        } 
    }
}

