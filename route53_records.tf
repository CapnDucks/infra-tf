module "jelliott_records" {
  source = "../modules/route53_record"

  zone_name = "jelliott.io"

  records = [
    {
      name = "subsonic"
      type = "CNAME"
      ttl  = 5
      records = [
        "subsonic.capnduck.com.",
      ]
    }
  ]
}

/*
module "capnduck_records" {
  source = "../modules/route53_record"

  zone_name = "capnduck.com"

  records = [
    {
      name = "subsonic"
      type = "CNAME"
      ttl  = 5
      records = [
        "subsonic.capnduck.com.",
      ]
    }
  ]
}
*/
