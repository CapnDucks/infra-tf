module "r53-hc" {
  #source = "git::https://github.com/CapnDucks/route53_healthcheck.git?ref=1.0.0"
  source = "../modules/route53_healthcheck"

  providers = {
    aws = aws.use1
  }

  apex_domain_name      = "capnduck.com"
  environment           = terraform.workspace
  name                  = "plex"
  port                  = 32400
  type                  = "HTTP"
  fqdn                  = "subsonic.capnduck.com"
  resource_path         = "/web/index.html"
  subscription_endpoint = ""
  email_endpoints       = ["aws-${terraform.workspace}@capnduck.com"]
}
