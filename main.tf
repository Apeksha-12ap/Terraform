terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0"
    }
  }
}

provider "aws" {
  region  = "ap-south-1"
}

resource "aws_instance" "jenkins_server" {

  ami               = "ami-0038df39db13a87e2"
  instance_type     = "t2.medium"
  availability_zone = "ap-south-1a"
  key_name          = "Mumbaikey"

  tags = {
    Name = "Jenkins_Pipeline_Server"
  }

}