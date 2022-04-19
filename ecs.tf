module "ecs" {
  source = "../modules/ecs"

  cloudwatch_retention_in_days = 7
  app                          = local.setting["app"]
  ecs_cluster                  = local.setting["ecs_cluster"]
  owner                        = local.setting["owner"]
  kms_key_alias                = local.setting["kms_key_alias"]
}
