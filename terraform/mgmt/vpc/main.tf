locals {
  github_owner = "mileslee-nsuslab"
}

terraform {
  required_version = ">= 1.0"
  backend "s3" {
    region = "us-east-1"        
    bucket = "miles-tfaction-backend" 
    key    = "terraform/mgmt/vpc/v1/terraform.tfstate"
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


resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC created by Terraform edited"
  }
}

resource "aws_default_vpc" "default2" {
  tags = {
    Name = "Default VPC created by Terraform 2"
  }
}
