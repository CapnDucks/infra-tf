terraform {
  required_version = "1.9.8"
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
      version = "5.77.0"
    }
    dns = {
      source  = "hashicorp/dns"
      version = "3.4.2"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.6"
    }
    external = {
      source  = "hashicorp/external"
      version = "2.3.4"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.2.3"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }
}
