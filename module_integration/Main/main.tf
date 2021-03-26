variable "aws_access_key" {
  default = "******************"
}
variable "aws_secret_key" {
  default = "*********************"
}
variable "region" {
  default = "us-east-2"
}



provider "aws" {
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
    profile  = "default"
    region   = var.region

}

module "final_module" {
  source = "D:/Terraform Projects/Final_Module/Modules"
 // acess_key =""
 // secret_key ="" 
 // region =""

  cidr_block_vpc="14.8.0.0/16"
  vpcname="my_final_vpc"

  cidr_block_subnet1 = "14.8.0.0/24"
  subnetname1 ="new_subnet1"
  av_zone1="us-east-2a"

  cidr_block_subnet2 = "14.8.1.0/24"
  subnetname2 ="new_subnet1"
  av_zone2="us-east-2b"


  //ami =""
  //instance_type=""
  vmname1 = "final_vm1"
  vmname2 = "final_vm2"
  //key_name="awskeypair"

}
