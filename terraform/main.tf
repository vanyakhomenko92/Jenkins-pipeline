terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.46.0"
    }
  }
}

provider "aws" {
  access_key = YOU-ACCESS-KEY
  secret_key = YOU-SECRET-KEY
  region     = "eu-central-1"
}