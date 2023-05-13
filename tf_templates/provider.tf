terraform {
  required_version = "~> 1.2.8"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.63.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

provider "aws" {
}