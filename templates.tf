data "template_file" "s3_bucket_policy_template" {
    template = file("policies/policy-s3-bucket.tpl")

    vars = {
        bucket_arn = aws_s3_bucket.one.arn
        origin_access_identity = aws_cloudfront_origin_access_identity.default.iam_arn
    }
}