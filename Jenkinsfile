pipline{
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
            steps(
                sh 'Terraform init'
            )
        }

        stage('Terraform Format')
        {
            steps(
                sh 'Terraform fmt'
            )
        }

        stage('Terraform Validate')
        {
            steps(
                sh 'Terraform validate'
            )
        }

        stage('Terraform Plan')
        {
            steps(
                sh 'Terraform plan'
            )
        }

        stage('Terraform Apply')
        {
            steps(
                sh 'Terraform apply --auto-approve'
            )
        }
    }
}