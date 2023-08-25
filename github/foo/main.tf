locals {
  # CHANGE
  github_owner = "mileslee-nsuslab"
}

terraform {
  required_version = ">= 1.0"
  backend "s3" {
    region = "us-east-1"
    bucket = "miles-tfaction-backend"
    key    = "github/foo/v1/terraform.tfstate"
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

################################################################################
# Resource
################################################################################

// S3 bucket resource
resource "aws_s3_bucket" "s3_bucket" {
  bucket = "test-bucket-393828"
  force_destroy = true

  tags = {
    env = "dev"
  }
}

provider "github" {
  owner = local.github_owner
}

provider "aws" {
  region = "us-east-1"
}

