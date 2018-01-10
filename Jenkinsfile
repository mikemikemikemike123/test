pipeline {
    agent any
    options { skipDefaultCheckout() }
    
    stages {
        stage('Build') {
            steps {
                    script {
                   def scmVars = checkout([$class: 'GitSCM', 
                       branches: [[name: '*/master']],
                       doGenerateSubmoduleConfigurations: false,
                       extensions: [
                 [$class: 'SparseCheckoutPaths',  sparseCheckoutPaths:[[$class:'SparseCheckoutPath', path:'frontend/']]]
                ],
                submoduleCfg: [],
                userRemoteConfigs: [[credentialsId: 'someID',
                url: 'git@link.git']]])
                   
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
