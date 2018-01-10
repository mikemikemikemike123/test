pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                    
                    script {
                        shortCommit = git log -n 1 --pretty=format:'%h'             
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
