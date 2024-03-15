locals {
  # Use existing (via data source) or create new zone (will fail validation, if zone is not reachable)
  use_existing_route53_zone = true
  # Removing trailing dot from domain
  domain_name = trimsuffix(local.domain, ".")
  domain      = local.setting["domain_name"]
}

resource "aws_route53_zone" "this" {
  count = !local.use_existing_route53_zone ? 1 : 0

  name = local.domain_name
}

module "acm" {
  source = "git::https://github.com/CapnDucks/aws_acm?ref=1.latest"

  providers = {
    aws = aws.use1
  }

  domain_name = local.domain_name
  zone_id     = coalescelist(data.aws_route53_zone.this.*.zone_id, aws_route53_zone.this.*.zone_id)[0]

  subject_alternative_names = [
    "www.${local.domain_name}"
  ]

  wait_for_validation = false
}
