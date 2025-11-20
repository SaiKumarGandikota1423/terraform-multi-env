terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.19.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "devopsawscloud-remote-state"
    key    = "foreach"
    region = "us-east-1"
    dynamodb_table = "devopsawscloud-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}