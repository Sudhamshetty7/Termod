pipeline {
    agent any
       stages {
        stage('Checkout') {
            steps {
                git branch: 'main', changelog: false, poll: false, url: 'https://github.com/Sudhamshetty7/Termod.git'
            }
        } 
    }
}
