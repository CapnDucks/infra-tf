resource "aws_db_subnet_group" "private" {
  name       = "private"
  subnet_ids = data.aws_subnets.private.ids

  tags = {
    type = "private"
  }
}

resource "aws_db_subnet_group" "public" {
  name       = "public"
  subnet_ids = data.aws_subnets.public.ids

  tags = {
    type = "public"
  }
}
