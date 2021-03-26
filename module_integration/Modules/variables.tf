variable "cidr_block_vpc" {
  type = string
}
variable "vpcname" {
  type = string
}
variable "cidr_block_subnet1" {
  type = string
}
variable "av_zone1" {
  type = string
}
variable "subnetname1" {
  type = string
}
variable "cidr_block_subnet2" {
  type = string
}
variable "av_zone2" {
  type = string
}
variable "subnetname2" {
  type = string
}
variable "ami" {
    type = string
  default = "ami-08962a4068733a2b6"
}
variable "instance_type" {
  type = string
  default = "t2.micro"
}
variable "vmname1" {
  type = string
}
variable "vmname2" {
  type = string
}
variable "key_name" {
  default = "awskeypair"
  type = string
}
variable "private_key_path" {
  default = "C:\\Users\\atibs\\Downloads\\awskeypair.pem"
  type = string
}