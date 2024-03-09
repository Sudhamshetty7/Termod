pipeline {
    agent any
       stages {
        stage('Checkout') {
            steps {
                sh 'rm -rf Termod'
                sh 'https://github.com/Sudhamshetty7/Termod.git'
            }
        }
        
        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }
        
        stage('Terraform Plan') {
            steps {
                script {
                    sh 'terraform plan -auto-approve'
                }
            }
        }
        
        stage('Terraform Apply') {
            steps {
                script {
                    sh 'terraform apply'
                }
            }
        }    
    }
}
