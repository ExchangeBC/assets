node('master') {
  stage('build') {
         echo "Building..."

         def buildResult = openshiftBuild apiURL: '', authToken: '', bldCfg: 'assets', buildName: '', checkForTriggeredDeployments: 'false', commitID: '', namespace: '', showBuildLogs: 'true', verbose: 'false', waitTime: '', waitUnit: 'sec'
         echo "Build Result: " + buildResult
  }
  stage('validate') {
      echo "Testing..."
  }
}
stage('approve') {
    input "Deploy to prod?"
}
node('master') {
    stage('deploy') {
        echo "Deploying..."
    }
}
