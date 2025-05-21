terraform {
  required_version = "1.12.1"
  backend "s3" {
    bucket       = "capnduck-terraform-tfstate"
    key          = "terraform.tfstate"
    use_lockfile = true
    region       = "us-west-2"
    encrypt      = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.98.0"
    }
    dns = {
      source  = "hashicorp/dns"
      version = "3.4.3"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.1.0"
    }
    external = {
      source  = "hashicorp/external"
      version = "2.3.5"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.2.4"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }
  }
}
