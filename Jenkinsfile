pipeline {
    agent any

    //options { skipDefaultCheckout() }

    stages {
        stage('Fetch') {
            steps {
                script {

                  sh 'git rev-parse HEAD > commit'
                  def commit = readFile('commit').trim()

                  sh 'git diff --name-only ${commit} > file_changed'


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
