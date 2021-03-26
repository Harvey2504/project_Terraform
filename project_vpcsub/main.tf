provider "aws"{
    profile = "default"
    region = "us-east-2"
}
resource "aws_vpc" "main" {
  cidr_block       = "10.8.6.0/24"

  tags = {
    Name = "FirstVPC"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.8.6.0/24"

  tags = {
    Name = "Subnet1"
  }
}


resource "aws_instance" "firstexample"{

   ami= "ami-01e7ca2ef94a0ae86"
   instance_type="t2.micro"
   subnet_id = aws_subnet.main.id

   tags={
    Name = "SecondTerraInstance"
}
}