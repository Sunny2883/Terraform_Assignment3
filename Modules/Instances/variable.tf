

variable "instance_ami" {
  description = "ami id for the ec2 instance"
  type = string
}

variable "Instance_name" {
  description = "Name of the instance"
  type = string
}

variable "instance_type" {
    description = "Type of instance"
    type = string
  
}

variable "region" {
  description = "name of region"
  type = string
}


variable "subnet_id" {
  description = "id of subnet"
  type = string
}

variable "cidr_block" {
  type = list(string)
}

variable "vpc_id" {
  type = string
}

variable "key_pair" {
  description = "key_pair for instance"
  type = string
}