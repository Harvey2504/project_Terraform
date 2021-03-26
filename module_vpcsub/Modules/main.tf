resource "aws_vpc" "vpc" {
    cidr_block = "${var.cidr_block_vpc}"
    tags = {
      "Name" = "${var.vpcname}"
    }
  
}

resource "aws_subnet" "subnet" {
    vpc_id = aws_vpc.vpc.id
     cidr_block = "${var.cidr_block_subnet}"
    tags = {
      "Name" = "${var.subnetname}"
    }
}


resource "aws_instance" "instance" {
    subnet_id = aws_subnet.subnet.id
  ami = "${var.ami}"
  instance_type = "${var.instancetype}"
  tags = {
    "Name" = "${var.vmname}"
  }
}