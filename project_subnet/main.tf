provider "aws" {
  region = "us-east-2"
}
resource "aws_vpc" "Terraform-vpc1" {
    cidr_block = "30.0.0.0/16"
    instance_tenancy = "default"
    tags = {
      "Name" = "Terraform-vpc1"
    }
  
}

resource "aws_subnet" "private-subnet1" {
    vpc_id = aws_vpc.Terraform-vpc1.id
    cidr_block = "30.0.1.0/24"
    tags = {
      "Name" = "private-subnet1"
    }
}

resource "aws_subnet" "public-subnet1" {
    vpc_id = aws_vpc.Terraform-vpc1.id
    cidr_block = "30.0.2.0/24"
    tags = {
      "Name" = "public-subnet1"
    }
}

resource "aws_instance" "private-instance1" {
    ami = "ami-01e7ca2ef94a0ae86"
    instance_type = "t2.micro"
    key_name = "awskeypair"
    subnet_id = aws_subnet.private-subnet1.id
    associate_public_ip_address = false
    tags = {
      "Name" = "private-instance1"
    }
  
}

resource "aws_instance" "public-instance1" {
    ami = "ami-01e7ca2ef94a0ae86"
    instance_type = "t2.micro"
    key_name = "awskeypair"
    subnet_id = aws_subnet.public-subnet1.id
    associate_public_ip_address = true
    tags = {
      "Name" = "public-instance1"
    }
  
}