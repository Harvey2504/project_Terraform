provider "aws" {
    region = "us-east-2"
  
}

module "s3module" {
  source = "D:/Terraform Projects/Project5/Modules"
  bucket = "my-tf-buck99"
  acl = "private"
  f_destroy = "true"
  s3name="mybucketnew3"
}


