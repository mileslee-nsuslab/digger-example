locals {
  github_owner = "mileslee-nsuslab"
}

terraform {
  required_version = ">= 1.0"
  backend "s3" {
    region = "us-east-1"        
    bucket = "miles-tfaction-backend" 
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

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "tfaction-bucket-3423"

  tags = {
    Name        = "My bucket"
    Environment = "Stage"
  }
}