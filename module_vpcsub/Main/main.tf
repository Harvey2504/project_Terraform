provider "aws" {
    region = "us-east-2"
  
}

module "vpcmodule" {
  source = "D:/Terraform Projects/Project6/Modules"

  cidr_block_vpc="12.8.10.0/24"
  vpcname="vpcf"

  cidr_block_subnet = "12.8.10.0/24"
  subnetname ="subnetf"

  ami="ami-01e7ca2ef94a0ae86"
  instancetype="t2.micro"
  vmname="myvm1"
}