
variable "VPC_name" {
  description = "name of VPC"
  type = string
}

variable "azs" {
  description = "availability zones"
  type = string
}

variable "subnet_name" {
  description = "name of subnet"
  type = string
}

variable "internet_gateway_name" {
  description = "name of internet gateway"
  type = string
}

variable "route_table_name" {
  description = "name of route table "
  type = string
  
}



variable cidr_block_vpc{
  description = "cidr value for VPC"
  type = string
}

variable cidr_block_subnet{
  description = "cidr value for subnet"
  type = string
}