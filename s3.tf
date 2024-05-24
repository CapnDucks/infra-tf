resource "aws_s3_bucket" "tfstate" {
  bucket = local.setting["s3_bucket"]

}

resource "aws_s3_bucket_acl" "tfstate" {
  bucket = aws_s3_bucket.tfstate.id
  acl    = local.setting["s3_bucket_acl"]

}

resource "aws_s3_bucket_server_side_encryption_configuration" "tfstate" {
  bucket = aws_s3_bucket.tfstate.bucket
    #checkov:skip=CKV_AWS_67:"Ensure AWS S3 bucket encrypted with Customer Managed Key (CMK) has regular rotation"

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.tfstate.arn
      sse_algorithm     = "aws:kms"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "tfstate" {
  bucket                  = aws_s3_bucket.tfstate.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "tfstate" {
  bucket = aws_s3_bucket.tfstate.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_kms_key" "tfstate" {
  deletion_window_in_days = 7
}

resource "aws_kms_alias" "tfstate" {
  name          = "alias/${local.setting["kms_tfstate_key"]}"
  target_key_id = aws_kms_key.tfstate.id
}
