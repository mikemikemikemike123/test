pipeline {
    agent any
   
    
    stages {
        stage('Build') {
            steps {
                    script {
                   def scmVars = checkout scm
                   
                        echo "\n\n\n\n"
                        echo scmVars
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
