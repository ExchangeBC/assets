node {
  stage('build') {
         echo "Building..."
         openshiftBuild bldCfg: 'assets', showBuildLogs: 'true'
         openshiftTag destStream: 'assets', verbose: 'true', destTag: '$BUILD_ID', srcStream: 'assets', srcTag: 'latest'
         openshiftTag destStream: 'assets', verbose: 'true', destTag: 'dev', srcStream: 'assets', srcTag: 'latest'
  }
  stage('environment') {
    node('maven') {
      SONARQUBE_PWD = sh (
      script: 'oc env dc/sonarqube --list | awk  -F  "=" \'/SONARQUBE_ADMINPW/{print $2}\'',
      returnStdout: true
       ).trim()
       echo "SONARQUBE_PWD: ${SONARQUBE_PWD}"
    }
  }
  stage('test') {

      echo "Insert testing here..."
  }
  stage('deploy-test') {
      input "Deploy to test?"
      openshiftTag destStream: 'assets', verbose: 'true', destTag: 'test', srcStream: 'assets', srcTag: '$BUILD_ID'
  }
  stage('deploy-prod') {
      input "Deploy to prod?"
      openshiftTag destStream: 'assets', verbose: 'true', destTag: 'prod', srcStream: 'assets', srcTag: '$BUILD_ID'
  }
}


