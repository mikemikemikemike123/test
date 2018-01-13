pipeline {
    agent any


    environment {
      ALIAS = "${env.BRANCH_NAME.replace('/', '-')}"
      GIT_TAG = sh(script: "./check_paths.sh ${env.GIT_COMMIT} ${env.GIT_PREVIOUS_COMMIT} ${env.ALIAS} ${env.BRANCH_NAME}", returnStdout: true)
    }

    stages {

      stage("test"){
      steps {
              echo "${env.GIT_TAG}"

            }
    }

    stage('prepare_backend') {
     when {
       expression { env.GIT_TAG.contains('backend') }
       anyOf {
         branch 'develop';
         branch 'master' 
       }
     }
     steps {

       sh 'echo "This is backend preparation step"'

     }
  }

 stage('prepare_frontend') {

   when {
     expression { env.GIT_TAG.contains('frontend') }
    }
     steps {

       sh 'echo "This is frontend preparation step"'

     }
  }

    }
}
