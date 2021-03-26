provider "aws" {
  region = "us-east-2"
}


resource "aws_security_group" "allow_tls1" {
  name        = "allow_tls1"
  description = "Allow TLS inbound traffic"
  //vpc_id      = default

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls1"
  }
}