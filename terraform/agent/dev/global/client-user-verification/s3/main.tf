locals {
  github_owner = "mileslee-nsuslab"
}

terraform {
  required_version = ">= 1.0"
  backend "s3" {
    region = "us-east-1"        
    bucket = "miles-test-bucket-blue" 
    key    = "terraform/agent/dev/global/client-user-verification/s3/v1/terraform.tfstate"
  }
}

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  owner = local.github_owner
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "test-235264"
  force_destroy = true

  tags = {
    env = "dev"
  }
}
