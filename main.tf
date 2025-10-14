terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "6.0.0"
    }
  }
}

provider "aws" {

    region = "ap-south-1"
    profile = "terraform"
  
}

resource "aws_instance" "name" {
    ami = "ami-0637e31a254cf3d2d"
    instance_type = "t2.medium"
    availability_zone = "ap-south-1a"
    key_name = "Devopskey"

    tags = {
        Name = "Jenkins_pipline_server"
    }
  
}

