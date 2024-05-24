module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.0"
    #checkov:skip=CKV_TF_2:"Ensure Terraform module sources use a tag with a version number"

  name                    = local.setting["vpc_name"]
  cidr                    = local.setting["vpc_cidr"]
  azs                     = local.setting["vpc_azs"]
  private_subnets         = local.setting["vpc_private_subnets"]
  public_subnets          = local.setting["vpc_public_subnets"]
  enable_nat_gateway      = local.setting["vpc_nat_gateway"]
  enable_vpn_gateway      = local.setting["vpc_vpn_gateway"]
  enable_dns_hostnames    = local.setting["vpc_dns_hostnames"]
  enable_dns_support      = local.setting["vpc_dns_support"]
  map_public_ip_on_launch = local.setting["map_public_ip_on_launch"]
}
