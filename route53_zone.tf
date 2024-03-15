locals {
  zone_name = sort(keys(module.zones.route53_zone_zone_id))[0]
}

module "zones" {
  source = "git::https://github.com/CapnDucks/aws_route53_zone?ref=1.0.0"
  #  source = "../modules/route53_zone"

  zones = {
    "jelliott.io" = {
      comment = "jelliott (dot) io"
      tags = {
        Name = "jelliott.io"
      }
    },
  }
}
