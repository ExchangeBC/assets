node('master') {
  stage('build') {
         echo "Building..."
  }
  stage('validate') {
      echo "Testing..."
  }
  stage('ready') {
      echo "Ready to promote."
  }
}
stage('approve') {
    input "Deploy to prod?"
}
