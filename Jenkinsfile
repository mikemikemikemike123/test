pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                    
                    script {
                        sh 'pwd'
                        sh 'git rev-parse HEAD > commit'
                        def commit = readFile('commit').trim()  
                        commit
                        sh 'commit'
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
