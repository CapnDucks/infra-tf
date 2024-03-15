provider "aws" {
  region = "us-west-2"

  default_tags {
    tags = {
      environment = terraform.workspace
      owner       = local.setting["OwnerContact"]
      project     = local.setting["app"]
      Name        = local.setting["name"]
      terraform   = "true"
    }
  }
}

provider "aws" {
  alias  = "use1"
  region = "us-east-1"
}
