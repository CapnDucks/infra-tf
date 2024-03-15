module "all_from_home" {
  source = "git::https://github.com/CapnDucks/aws_security_group?ref=1.0.0"

  tcp_ports           = "22,80,443,3306,5201,5432,8080,8443"
  cidrs               = ["${join(",", data.dns_a_record_set.home.addrs)}/32"]
  security_group_name = "all from home"
  vpc_id              = data.aws_vpc.this.id
}

module "http_https_everywhere" {
  source = "git::https://github.com/CapnDucks/aws_security_group?ref=1.0.0"

  tcp_ports           = "80,443"
  cidrs               = ["0.0.0.0/0"]
  security_group_name = "http and https everywhere"
  vpc_id              = data.aws_vpc.this.id
}
