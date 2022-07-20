module "ecs" {
  source = "git::https://github.com/CapnDucks/aws_ecs?ref=1.0.0"
#  source = "../modules/ecs"

  name          = local.setting["ecs_cluster"]
  kms_key_alias = local.setting["kms_key_alias"]
}
