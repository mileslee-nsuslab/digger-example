locals {
  github_owner = "mileslee-nsuslab"
}

terraform {
  required_version = ">= 1.0"
  backend "s3" {
    region = "us-east-1"        
    bucket = "miles-tfaction-backend" 
    key    = "agent/dev/global/client-user-promotion/s3/v1/terraform.tfstate"
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