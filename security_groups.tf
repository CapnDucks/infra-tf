module "all_from_home_sg" {
  source = "../modules/sg"

  tcp_ports           = "22,5432"
  cidrs               = ["${chomp(data.http.myip.body)}/32"]
  security_group_name = "all_from_home"
  vpc_id              = data.aws_vpc.this.id
}

module "http_https_eveywhere_sg" {
  source = "../modules/sg"

  tcp_ports           = "80,443"
  cidrs               = ["0.0.0.0/0"]
  security_group_name = "http_and_https_from_anywhere"
  vpc_id              = data.aws_vpc.this.id
}
