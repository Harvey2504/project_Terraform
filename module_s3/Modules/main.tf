resource "aws_s3_bucket" "b" {
    bucket = "${var.bucket}"
    acl ="${var.acl}"
    force_destroy = "${var.f_destroy}"
    tags = {
      "Name" = "${var.s3name}"
    }
  
}

    