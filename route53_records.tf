module "jelliott_records" {
  source = "git::https://github.com/CapnDucks/aws_route53_record?ref=1.0.0"

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
      name            = "jenkins"
      ttl             = "120"
      type            = "A"
      records = [
        "192.168.1.130"
      ]
    }
  ]
}

module "capnduck_records" {
  source = "git::https://github.com/CapnDucks/aws_route53_record?ref=1.0.0"

  zone_name = "capnduck.com"

  records = [
    {
      allow_overwrite = true
      name            = "@"
      type            = "DS"
      ttl             = "30"
      records = [
        aws_route53_key_signing_key.capnduck_com.ds_record,
      ]
    },
    {
      allow_overwrite = true
      name            = "photos"
      type            = "CNAME"
      ttl             = "30"
      records = [
        "capnduck.ddns.net.",
      ]
    },
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
      name            = "speedtest"
      type            = "CNAME"
      ttl             = "60"
      records = [
        "capnduck.ddns.net.",
      ]
    },
    {
      allow_overwrite = true
      name            = "plex"
      type            = "CNAME"
      ttl             = "60"
      records = [
        "capnduck.ddns.net.",
      ]
    },
    {
      allow_overwrite = true
      name            = "media"
      type            = "CNAME"
      ttl             = "60"
      records = [
        "capnduck.ddns.net.",
      ]
    },
    {
      allow_overwrite = true
      name            = "vault"
      type            = "CNAME"
      ttl             = "60"
      records = [
        "capnduck.ddns.net.",
      ]
    },
    {
      allow_overwrite = true
      name            = "cloud"
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
        "ns-157.awsdns-19.com.",
        "ns-755.awsdns-30.net.",
        "ns-1705.awsdns-21.co.uk.",
        "ns-1348.awsdns-40.org."
      ]
    },
    {
      allow_overwrite = true
      name            = "calendar"
      type            = "CNAME"
      ttl             = "60"
      records = [
        "ghs.googlehosted.com.",
      ]
    },
    {
      allow_overwrite = true
      name            = "drive"
      type            = "CNAME"
      ttl             = "60"
      records = [
        "ghs.googlehosted.com.",
      ]
    },
    {
      allow_overwrite = true
      name            = "groups"
      type            = "CNAME"
      ttl             = "60"
      records = [
        "ghs.googlehosted.com.",
      ]
    },
    {
      allow_overwrite = true
      name            = "mail"
      type            = "CNAME"
      ttl             = "60"
      records = [
        "ghs.googlehosted.com.",
      ]
    },
    {
      allow_overwrite = true
      name            = "sites"
      type            = "CNAME"
      ttl             = "60"
      records = [
        "ghs.googlehosted.com.",
      ]
    },
    {
      allow_overwrite = true
      name            = ""
      type            = "CAA"
      ttl             = "60"
      records = [
        "0 issue \"letsencrypt.org\"",
        "0 issue \"amazon.com\""
      ]
    },
    {
      allow_overwrite = true
      name            = ""
      type            = "MX"
      ttl             = "1209600"
      records = [
        "1 aspmx.l.google.com.",
        "10 alt4.aspmx.l.google.com.",
        "10 alt3.aspmx.l.google.com.",
        "5 alt2.aspmx.l.google.com.",
        "5 alt1.aspmx.l.google.com."
      ]
    },
    {
      allow_overwrite = true
      name            = ""
      type            = "TXT"
      ttl             = "3600"
      records = [
        "v=spf1 include:_spf.google.com ~all"
      ]
    },
    {
      allow_overwrite = true
      name            = "_dmarc"
      type            = "TXT"
      ttl             = "3600"
      records = [
        "v=DMARC1; p=quarantine; rua=mailto:dmarc-reports@capnduck.com; ruf=mailto:dmarc-reports@capnduck.com; fo=0; adkim=r; aspf=r; pct=100; rf=afrf; ri=86400"
      ]
    },
    {
      allow_overwrite = true
      name            = "google._domainkey"
      type            = "TXT"
      ttl             = "3600"
      records = [
        "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAntC4Qc+uIFILOKcz3V4efoztmH4BddVHeeapgNf0xlvnNjeAHYzkQWg0w9vBRgWM0uuRljRr0Yah+M+wGZdwONv6hC72FmVWiVH/yeEcsT8zVXuLJtdsb0JEypd5nBjfjr+TobJTc5GM9VtGD/PaMePQC3ubzXMyqRXPhTl6MfWC/eClGUlVvZ+ffKKKJ8Ie0\"\"ZXsUp9yYbWJLh2coJs4GI284CmyTWN6yWo20EFbpweoSSupAWAhdXFb7M/wsPbpOzcWyYZomNTFMl8BmuRRcMeVF2xR4NPg6/mbADoSzjACsp+kI7UCg/k/IX6/tj0NLwGwaoVXCH8JP+jP1nTZFwIDAQAB"
      ]
    }

  ]
}
