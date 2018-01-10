pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                    script {
                   
                        for (commit in pullRequest['commits']) {
                    echo "SHA: ${commit['sha']}, Committer: ${commit['commiter']}, Commit Message: ${commit['message']}"
                    }
                         
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
