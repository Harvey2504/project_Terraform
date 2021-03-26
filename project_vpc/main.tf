provider "aws"{
    profile = "default"
    region = "us-east-2"
}
resource "aws_vpc" "main" {
  cidr_block       = "10.9.7.0/24"
  tags = {
    Name = "SecondVPC"
  }
}