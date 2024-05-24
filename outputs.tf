output "myip" {
  description = "My IP for security groups."
  value       = join(",", data.dns_a_record_set.home.addrs)
}

output "aws_vpc_id" {
  description = "VPC id."
  value       = data.aws_vpc.this.id
}

output "distinct_domain_names" {
  description = "List of distinct domains names used for the validation."
  value       = module.acm.distinct_domain_names
}

output "route53_zone" {
  description = "Route53 zone."
  value       = data.aws_route53_zone.this
}

output "public" {
  description = "Public subnet id's."
  value       = data.aws_subnets.public.ids
}

output "private" {
  description = "Private subnet id's."
  value       = data.aws_subnets.private.ids
}

output "account_id" {
  description = "AWS account ID."
  value       = data.aws_caller_identity.this.id
}

output "route53_zone_zone_id" {
  description = "Zone ID of Route53 zone"
  value       = module.zones.route53_zone_zone_id
}

output "route53_zone_name_servers" {
  description = "Name servers of Route53 zone"
  value       = module.zones.route53_zone_name_servers
}

output "route53_zone_name" {
  description = "Name of Route53 zone."
  value       = module.zones.route53_zone_name
}

output "acm_arn" {
  description = "ARN of the ACM cert."
  value       = module.acm.acm_certificate_arn
}

output "ds" {
  description = "Route53 DS info."
  value       = aws_route53_key_signing_key.capnduck_com.ds_record
}
