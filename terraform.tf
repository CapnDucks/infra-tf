terraform {
  required_version = "~> 1.1.7"
  backend "s3" {
    bucket         = "capnduck-terraform-tfstate"
    key            = "terraform.tfstate"
    dynamodb_table = "terraform-tfstate-lock"
    region         = "us-west-2"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
