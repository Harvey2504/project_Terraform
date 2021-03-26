provider "aws"{
    profile = "default"
    region = "us-east-2"
}
resource "aws_instance" "firstexample"{
   ami= "ami-01e7ca2ef94a0ae86"
   instance_type="t2.micro"
   key_name = "awskeypair"
   associate_public_ip_address = true

   tags={
    Name = "TerraInstance1"
}
}

