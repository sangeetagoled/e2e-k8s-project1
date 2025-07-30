terraform {
  backend "s3" {
    bucket         = "s3buckk8sproject"
    region         = "us-east-1"
    key            = "e2e-k8s-project1/Jenkins-Server-TF/terraform.tfstate"
    dynamodb_table = "s3statefilelock"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
