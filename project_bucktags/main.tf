variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "region" {
  default = "us-east-2"
}

variable "bucket_name_prefix" {}
variable "billing_code_tag" {}
variable "environment_tag" {}


provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.region
}


#Random ID
resource "random_integer" "rand" {
  min = 10000
  max = 99999
}

locals {
  common_tags = {
    BillingCode = var.billing_code_tag
    Environment = var.environment_tag
  }

  s3_bucket_name = "${var.bucket_name_prefix}-${var.environment_tag}-${random_integer.rand.result}"
}

  resource "aws_s3_bucket" "web_bucket" {
    bucket        = local.s3_bucket_name
    acl           = "private"
    force_destroy = true

    tags = merge(local.common_tags, { Name = "${var.environment_tag}-web-bucket" })

  }

