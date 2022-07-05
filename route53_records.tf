module "jelliott_records" {
  source = "../modules/route53_record"

  zone_name = "jelliott.io"

  records = [
    {
      allow_overwrite = true
      name            = ""
      type            = "NS"
      ttl             = "172800"
      records = [
        "ns-8.awsdns-01.com.",
        "ns-901.awsdns-48.net.",
        "ns-1555.awsdns-02.co.uk.",
        "ns-1201.awsdns-22.org."
      ]
    },
    {
      allow_overwrite = true
      name            = "subsonic"
      ttl             = "30"
      type            = "CNAME"
      records = [
        "subsonic.capnduck.com."
      ]
    }
  ]
}

module "capnduck_records" {
  source = "../modules/route53_record"

  zone_name = "capnduck.com"

  records = [
    {
      allow_overwrite = true
      name            = "subsonic"
      type            = "CNAME"
      ttl             = "60"
      records = [
        "capnduck.ddns.net.",
      ]
    },
    {
      allow_overwrite = true
      name            = ""
      type            = "NS"
      ttl             = "172800"
      records = [
        "ns-372.awsdns-46.com.",
        "ns-1897.awsdns-45.co.uk.",
        "ns-1144.awsdns-15.org.",
        "ns-934.awsdns-52.net."
      ]
    }
  ]
}
