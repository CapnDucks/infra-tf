locals {
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

import {
  to = aws_route53_zone.capnduck_com
  id = data.aws_route53_zone.this[0].id
}

resource "aws_route53_zone" "capnduck_com" {
  comment       = "Managed by Terraform"
  force_destroy = true
  name          = local.setting["domain_name"]

  tags = {
    Name = local.setting["domain_name"]
  }
}
