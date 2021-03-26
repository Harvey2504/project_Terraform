resource "aws_vpc" "final_vpc" {
    cidr_block = "${var.cidr_block_vpc}"
    tags = {
      "Name" = "${var.vpcname}"
    }
  
}
resource "aws_subnet" "final_subnet1" {
  vpc_id = aws_vpc.final_vpc.id
     cidr_block = "${var.cidr_block_subnet1}"
     map_public_ip_on_launch = "true"
     availability_zone       = var.av_zone1
    tags = {
      "Name" = "${var.subnetname1}"
    }
}
resource "aws_subnet" "final_subnet2" {
   vpc_id = aws_vpc.final_vpc.id
     cidr_block = "${var.cidr_block_subnet2}"
      map_public_ip_on_launch = "true"
     availability_zone       = var.av_zone2
    tags = {
      "Name" = "${var.subnetname2}"
    }
}
resource "aws_security_group" "allow_connection" {
  name        = "final_demo"
  description = "Allow ports for final demo"
  vpc_id      = aws_vpc.final_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "final_instance1" {
    
     ami = "${var.ami}"
     instance_type = "${var.instance_type}"
     vpc_security_group_ids = [aws_security_group.allow_connection.id]
     subnet_id = aws_subnet.final_subnet1.id
     key_name = "${var.key_name}"
     associate_public_ip_address = true
  tags = {
    "Name" = "${var.vmname1}"
  }
  /* connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ubuntu"
    private_key = file(var.private_key_path)

  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo mkdir demo1"
    ]
  }*/
}
resource "aws_instance" "final_instance2" {
   
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    vpc_security_group_ids = [aws_security_group.allow_connection.id]
    subnet_id = aws_subnet.final_subnet2.id
    key_name = "${var.key_name}"
    associate_public_ip_address = true
    tags = {
      "Name" = "${var.vmname2}"
  }
    /* connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ubuntu"
    private_key = file(var.private_key_path)

  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo mkdir demo2"
    ]
  }*/
}

