pipeline{
    agent any

    environment{
        AWS_ACCESS_KEY_ID = credentials('AWS_Access_Key_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_Secret_Access_Key')
    }

    stages
    {
        stage('Git Checkout')
        {
            steps()
            {
                git branch: 'main', url: 'https://github.com/Apeksha-12ap/Terraform.git'
            }
        }

        stage('Terraform Initialization')
        {
            steps()
            {
                sh 'Terraform init -no-color'
            }
        }

        stage('Terraform Format')
        {
            steps()
            {
                sh 'Terraform fmt -no-color'
            }
                
            
        }

        stage('Terraform Validate')
        {
            steps()
            {
                sh 'Terraform validate -no-color'
            }
        }

        stage('Terraform Plan')
        {
            steps()
            {
                sh 'Terraform plan -no-color'
            }
        }

        stage('Terraform Apply')
        {
            steps()
            {
                sh 'Terraform apply --auto-approve -no-color'
            }
        }
    }
}