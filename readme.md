<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.11.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.88.0 |
| <a name="requirement_dns"></a> [dns](#requirement\_dns) | 3.4.2 |
| <a name="requirement_external"></a> [external](#requirement\_external) | 2.3.4 |
| <a name="requirement_null"></a> [null](#requirement\_null) | 3.2.3 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.6.3 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | 4.0.6 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.88.0 |
| <a name="provider_aws.use1"></a> [aws.use1](#provider\_aws.use1) | 5.88.0 |
| <a name="provider_dns"></a> [dns](#provider\_dns) | 3.4.2 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_acm"></a> [acm](#module\_acm) | git::https://github.com/CapnDucks/aws_acm | 1.latest |
| <a name="module_all_from_home"></a> [all\_from\_home](#module\_all\_from\_home) | git::https://github.com/CapnDucks/aws_security_group | 1.0.0 |
| <a name="module_capnduck_records"></a> [capnduck\_records](#module\_capnduck\_records) | git::https://github.com/CapnDucks/aws_route53_record | 1.0.0 |
| <a name="module_ecs"></a> [ecs](#module\_ecs) | git::https://github.com/CapnDucks/aws_ecs | v2 |
| <a name="module_http_https_everywhere"></a> [http\_https\_everywhere](#module\_http\_https\_everywhere) | git::https://github.com/CapnDucks/aws_security_group | 1.0.0 |
| <a name="module_jelliott_records"></a> [jelliott\_records](#module\_jelliott\_records) | git::https://github.com/CapnDucks/aws_route53_record | 1.0.0 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | ~> 5.0 |
| <a name="module_zones"></a> [zones](#module\_zones) | git::https://github.com/CapnDucks/aws_route53_zone | 1.0.0 |

## Resources

| Name | Type |
|------|------|
| [aws_db_subnet_group.private](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/resources/db_subnet_group) | resource |
| [aws_db_subnet_group.public](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/resources/db_subnet_group) | resource |
| [aws_dynamodb_table.tfstate_lock](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/resources/dynamodb_table) | resource |
| [aws_ecr_lifecycle_policy.this](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/resources/ecr_lifecycle_policy) | resource |
| [aws_ecr_repository.this](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/resources/ecr_repository) | resource |
| [aws_iam_service_linked_role.spot](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/resources/iam_service_linked_role) | resource |
| [aws_kms_alias.capnduck_com](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/resources/kms_alias) | resource |
| [aws_kms_alias.tfstate](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/resources/kms_alias) | resource |
| [aws_kms_key.capnduck_com](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/resources/kms_key) | resource |
| [aws_kms_key.tfstate](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/resources/kms_key) | resource |
| [aws_route53_hosted_zone_dnssec.capnduck_com](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/resources/route53_hosted_zone_dnssec) | resource |
| [aws_route53_key_signing_key.capnduck_com](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/resources/route53_key_signing_key) | resource |
| [aws_route53_zone.capnduck_com](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/resources/route53_zone) | resource |
| [aws_route53_zone.this](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/resources/route53_zone) | resource |
| [aws_s3_bucket.tfstate](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_acl.tfstate](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/resources/s3_bucket_acl) | resource |
| [aws_s3_bucket_public_access_block.tfstate](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.tfstate](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.tfstate](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/resources/s3_bucket_versioning) | resource |
| [aws_caller_identity.this](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/data-sources/caller_identity) | data source |
| [aws_route53_zone.this](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/data-sources/route53_zone) | data source |
| [aws_subnets.private](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/data-sources/subnets) | data source |
| [aws_subnets.public](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/data-sources/subnets) | data source |
| [aws_vpc.this](https://registry.terraform.io/providers/hashicorp/aws/5.88.0/docs/data-sources/vpc) | data source |
| [dns_a_record_set.home](https://registry.terraform.io/providers/hashicorp/dns/3.4.2/docs/data-sources/a_record_set) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account_id"></a> [account\_id](#output\_account\_id) | AWS account ID. |
| <a name="output_acm_arn"></a> [acm\_arn](#output\_acm\_arn) | ARN of the ACM cert. |
| <a name="output_aws_vpc_id"></a> [aws\_vpc\_id](#output\_aws\_vpc\_id) | VPC id. |
| <a name="output_distinct_domain_names"></a> [distinct\_domain\_names](#output\_distinct\_domain\_names) | List of distinct domains names used for the validation. |
| <a name="output_ds"></a> [ds](#output\_ds) | Route53 DS info. |
| <a name="output_myip"></a> [myip](#output\_myip) | My IP for security groups. |
| <a name="output_private"></a> [private](#output\_private) | Private subnet id's. |
| <a name="output_public"></a> [public](#output\_public) | Public subnet id's. |
| <a name="output_route53_zone"></a> [route53\_zone](#output\_route53\_zone) | Route53 zone. |
| <a name="output_route53_zone_name"></a> [route53\_zone\_name](#output\_route53\_zone\_name) | Name of Route53 zone. |
| <a name="output_route53_zone_name_servers"></a> [route53\_zone\_name\_servers](#output\_route53\_zone\_name\_servers) | Name servers of Route53 zone |
| <a name="output_route53_zone_zone_id"></a> [route53\_zone\_zone\_id](#output\_route53\_zone\_zone\_id) | Zone ID of Route53 zone |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->