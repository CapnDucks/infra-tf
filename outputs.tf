output "myip" {
  description = "My IP for security groups"
  value       = "${chomp(data.http.myip.body)}/32"
}

output "aws_vpc_id" {
  value = data.aws_vpc.this.id
}

output "distinct_domain_names" {
  description = "List of distinct domains names used for the validation."
  value       = module.acm.distinct_domain_names
}

output "route53_zone" {
  value = data.aws_route53_zone.this
}

output "public" {
  value = data.aws_subnets.public.ids
}

output "private" {
  value = data.aws_subnets.private.ids
}

output "account_id" {
  value = data.aws_caller_identity.this.id
}
