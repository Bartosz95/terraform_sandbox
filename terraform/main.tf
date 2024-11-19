terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.2"
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
provider "local" {
  # Configuration options
}

# Create a VPC
resource "local_file" "foo" {
  content  = "foo!"
  filename = "${path.module}/foo.bar"
}

