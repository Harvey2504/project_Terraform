provider "aws" {
  region = "us-east-2"
}

module "module1" {
  source = "D:/Terraform Projects/Project9/Modules"
  name= "SSH"

  description= "Allowing All SSH Connections"
  ingress_description ="Allow SSH"
  ingress_from_port=22
  ingress_to_port=22
  ingress_protocol="tcp"
  ingress_cidr ="0.0.0.0/0"

  tag_name="MySSH"
  
}
