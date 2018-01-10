pipeline {
    agent any
    
    checkcout{
        
    }
    
    stages {
        stage('Build') {
            steps {
                    script {
                   def scmVars = checkout scm
                 }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
