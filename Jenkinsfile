pipeline {
    agent any
    
    stages {
        
        stage('test')
        when {
                expression {
                    GIT_BRANCH = 'origin/' + sh(returnStdout: true, script: 'git rev-parse --abbrev-ref HEAD').trim()
                    return GIT_BRANCH == 'origin/master' || params.FORCE_FULL_BUILD
                }
            }
            steps {
                sh 'echo "lalalal'
                
        }
        
        stage('Build') {
            steps {
                    
                    script {
                                                                 
                        sh 'git rev-parse HEAD > commit'
                        def commit = readFile('commit').trim() 
                        
                        sh 'git diff --name-only f9e8d87fa35d96f26c902720a9d2c83ebb848381 > file_changed'
                        
                       
                    }
                         
                 }
        }


    }
}
