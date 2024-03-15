resource "tls_private_key" "this" {
  algorithm = "RSA"
  rsa_bits  = 8192
}

resource "aws_key_pair" "this" {
  key_name   = "${local.setting["ssh_key_name"]}-ssh"
  public_key = tls_private_key.this.public_key_openssh
}

resource "aws_secretsmanager_secret" "this" {
  name                    = "${local.setting["ssh_key_name"]}-ssh"
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "this" {
  secret_id     = aws_secretsmanager_secret.this.id
  secret_string = tls_private_key.this.private_key_pem

  lifecycle {
    ignore_changes = [secret_string]
  }
}
