terraform {
  required_version = ">= 1.8.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket  = "dev-carl-tf-bucket-039817790672-us-east-1-an"
    region  = "us-east-1"
    encrypt = true
    key     = "eks/terraform.tfstate"
  }
}

provider "aws" {
  region = var.aws-region
}
