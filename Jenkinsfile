pipeline {
    agent any

    stages {
        stage('Terraform Init & Plan') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'terraform-aws-creds']]) {
                    sh '''
                        terraform init -no-color
                        terraform fmt -no-color
                        terraform validate -no-color
                        terraform plan -no-color
                    '''
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'terraform-aws-creds']]) {
                    sh '''
                        terraform apply -auto-approve -no-color
                    '''
                }
            }
        }
    }
}