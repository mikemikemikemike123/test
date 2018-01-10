pipeline {
    agent any
    options { skipDefaultCheckout() }
    
    stages {
        stage('Build') {
            steps {
                    script {
                   def scmVars = checkout scm
                   
                        echo "\n\n\n\n"
                   def commitHash = scmVars.GIT_COMMIT                
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
