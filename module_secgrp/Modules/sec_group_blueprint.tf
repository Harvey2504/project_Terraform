
resource "aws_security_group" "allow_SSH" {
  name        = "${var.name}"
  description = "${var.description}"
  //vpc_id      = default

  ingress {
    description = "${var.ingress_description}"
    from_port   = "${var.ingress_from_port}"
    to_port     = "${var.ingress_to_port}"
    protocol    = "${var.ingress_protocol}"
    cidr_blocks = ["${var.ingress_cidr}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.tag_name}"
  }
}