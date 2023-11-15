variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "subnet_id" {
 
}

variable "instance_ami" {
  type = string
  default = "ami-06dd92ecc74fdfb36"
}

variable "key" {
  type = string
  default = "demo1"
}

variable "server_names" {
  type        = list(string)
}