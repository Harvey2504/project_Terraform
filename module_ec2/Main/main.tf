provider "aws" {
    region = "us-east-2"
  
}
module "vmmodule1" {
  source = "D:/Terraform Projects/Project4/Modules"

  ami="ami-01e7ca2ef94a0ae86"
  instancetype="t2.micro"
  vmname="myvm4"
  key="awskeypair"
  ip_flag="true"
}

/*module "vmmodule2" {
  source = "D:/Terraform Projects/Project4/Modules"

  ami="ami-01e7ca2ef94a0ae86"
  instancetype="t2.micro"
  vmname="myvm5"
  key="awskeypair"
  ip_flag="true"
}*/