resource "random_string" "bucket-id" {
  length  = 12
  upper   = false
  number  = true
  lower   = true
  special = false
}

locals {
  api_gateway = "api_gateway"
  s3_bucket_name = "dev-${random_string.bucket-id.result}-gateway-pagamentos"
}