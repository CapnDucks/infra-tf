module "ecs" {
  source = "git::https://github.com/CapnDucks/aws_ecs?ref=v2"

  name          = local.setting["ecs_cluster"]
  kms_key_alias = local.setting["kms_ecs_key"]
}
