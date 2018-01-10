pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                    
                    script {
                      
                        sh 'git rev-parse HEAD > commit'
                        def commit = readFile('commit').trim() 
                        ${commit}
                       
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
