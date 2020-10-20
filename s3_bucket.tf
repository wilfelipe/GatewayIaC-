resource "aws_s3_bucket" "one" {
    bucket = local.s3_bucket_name
    acl    = "private"

    website {
        index_document = "index.html"
        error_document = "index.html"
    }

    cors_rule {
      allowed_methods = ["GET"]
      allowed_origins = ["*"]
    }
}

resource "aws_s3_bucket_policy" "one" {
  bucket = aws_s3_bucket.one.id
  policy = data.template_file.s3_bucket_policy_template.rendered
}

resource "aws_s3_bucket_public_access_block" "one" {
  bucket = aws_s3_bucket.one.id

  block_public_acls   = true
  ignore_public_acls = true 
  block_public_policy = true
  restrict_public_buckets = true
}