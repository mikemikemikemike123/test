pipeline {
    agent any
   
    
    stages {
        stage('Build') {
            steps {
                    script {
                   def scmVars = checkout scm
                   scmVars
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
