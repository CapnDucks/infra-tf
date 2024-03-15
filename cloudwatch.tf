# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "/aws/rds/cluster/database-1"
resource "aws_cloudwatch_log_group" "database-1" {
  log_group_class   = "STANDARD"
  name              = "/aws/rds/cluster/database-1"
  retention_in_days = 5
  skip_destroy      = false
}
