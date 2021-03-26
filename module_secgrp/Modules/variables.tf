variable "name" {
    type = string
}
variable "description" {
    type = string
}
variable "ingress_description" {
    type = string
}
variable "ingress_from_port" {
    type = number
}
variable "ingress_to_port" {
    type = number
}
variable "ingress_protocol" {
    type = string
}
variable "ingress_cidr" {
    type = string
}
variable "tag_name" {
  type = string
}
