provider "aws"{
    profile = "default"
    region = "us-east-2"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tform-bucket2"

  tags = {
    Name        = "My bucket in Terraform"
  }
}