resource "aws_instance" "instance" {
  associate_public_ip_address = "${var.ip_flag}"
  key_name = "${var.key}"
  ami = "${var.ami}"
  instance_type = "${var.instancetype}"
  tags = {
    "Name" = "${var.vmname}"
  }
}