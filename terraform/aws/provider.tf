terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.55"
    }
  }
  backend "s3" {
    bucket         = "vitor-torto-001-tf"
    key            = "terraform.tfstate"
    dynamodb_table = "vitor-torto-001-tf"
    region         = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "cloud"
}