module "ecs" {
  source = "../modules/ecs"

  name          = local.setting["ecs_cluster"]
  kms_key_alias = local.setting["kms_key_alias"]
}
