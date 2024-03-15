#variable "corp_cidrs" {
#  description = "CIDR blocks from HQ"
#  type    = list(any)
#  default = ["1.2.3.4/32", "1.2.4.4/32"]
#}

locals {
  settings = {
    default = {
      app                     = "infrastructure"
      app_env                 = terraform.workspace
      domain_name             = "capnduck.com."
      ecs_cluster             = "default"
      ecr_repo                = "capnduck"
      kms_key_alias           = "capnduck"
      map_public_ip_on_launch = true
      name                    = "infra"
      owner                   = "capnduck"
      OwnerContact            = "aws-${terraform.workspace}@capnduck.com"
      s3_bucket_acl           = "private"
      s3_bucket               = "capnduck-terraform-tfstate"
      ssh_key_name            = "ec2-key"
      vpc_azs                 = ["us-west-2a", "us-west-2b", "us-west-2c", "us-west-2d"]
      vpc_cidr                = "10.0.0.0/16"
      vpc_dns_hostnames       = true
      vpc_dns_support         = true
      vpc_name                = "capnduck"
      vpc_nat_gateway         = false
      vpc_private_subnets     = ["10.0.128.0/20", "10.0.144.0/20", "10.0.160.0/20", "10.0.176.0/20", "10.0.192.0/20", "10.0.208.0/20"]
      vpc_public_subnets      = ["10.0.0.0/20", "10.0.16.0/20", "10.0.32.0/20"]
      vpc_vpn_gateway         = false
    }

    prod = {
      OwnerContact = "aws@capnduck.com"
    }

    stage = {
    }

    qa = {
    }

    dev = {
    }

  }

  setting = merge(
    local.settings["default"], local.settings[terraform.workspace]
  )
}
