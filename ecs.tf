module "ecs" {
  source = "git::https://github.com/CapnDucks/aws_ecs?ref=v2"
    #checkov:skip=CKV_TF_2:"Ensure Terraform module sources use a tag with a version number"

  name          = local.setting["ecs_cluster"]
  kms_key_alias = local.setting["kms_ecs_key"]
}
