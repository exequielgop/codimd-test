terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      "pomelo:environment" = "management"
      "pomelo:service"     = "poc-de16802b"
      "pomelo:team-id"     = "team_platform"
      "pomelo:provisioner" = "spacelift"
    }
  }
}

data "aws_caller_identity" "current" {}
