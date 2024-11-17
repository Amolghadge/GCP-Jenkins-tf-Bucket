pipeline {
    agent any
	
    environment {
        GOOGLE_APPLICATION_CREDENTIALS = credentials('gcp-sa-key')
	GIT_TOKEN = credentials('GitHub')
	    
    }
	
    stages {
        stage('Git Checkout') {
            steps {
               git branch: 'main', credentialsId: 'GitHub', url: 'https://github.com/Amolghadge/GCP-Jenkins-tf-Bucket.git'
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
                    sh 'terraform plan -out=tfplan'
                }
            }
        }

	    stage('Manual Approval') {
            steps {
                input "Approve?"
            }
        }
	    
        stage('Terraform Apply') {
            steps {
                script {
                    sh 'terraform apply tfplan'
                }
            }
        }
    }
}
