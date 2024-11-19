terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.52.0"
    }
    random = {
      version = "~> 3.6.2"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "2.6.0"
    }

  }

  cloud {
    organization = "bartosz_org"
    workspaces {
      tags = ["terraform_sandbox"]
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-southeast-2"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/18"
}

