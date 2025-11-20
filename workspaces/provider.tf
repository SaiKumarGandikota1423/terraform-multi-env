terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.19.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "dasw76s-remote-state-19-11-2025"
    key    = "foreach"
    region = "us-east-1"
    dynamodb_table = "daws76s-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}