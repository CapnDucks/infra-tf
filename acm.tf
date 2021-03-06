#Adding a comment for git pre-commit
locals {
  # Use existing (via data source) or create new zone (will fail validation, if zone is not reachable)
  use_existing_route53_zone = true

  domain = local.setting["domain_name"]

  # Removing trailing dot from domain
  domain_name = trimsuffix(local.domain, ".")
}

resource "aws_route53_zone" "this" {
  count = !local.use_existing_route53_zone ? 1 : 0
  name  = local.domain_name
}

module "acm" {
  source = "git::https://github.com/CapnDucks/aws_acm?ref=1.0.1"
  #  source = "../modules/acm"
  providers = {
    aws = aws.use1
  }

  domain_name = local.domain_name
  zone_id     = coalescelist(data.aws_route53_zone.this.*.zone_id, aws_route53_zone.this.*.zone_id)[0]

  subject_alternative_names = [
    "plex.${local.domain_name}",
    "subsonic.${local.domain_name}"
  ]

  wait_for_validation = false
}
