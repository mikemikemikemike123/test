pipeline {
    agent any
    
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
                userRemoteConfigs: [[credentialsId: 'e5e65ad4-332f-491e-b1cd-9f0276152d7b',
                url: 'https://github.com/mikemikemikemike123/test.git']]])
                   
                        echo "\n\n\n\n"
                         
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
