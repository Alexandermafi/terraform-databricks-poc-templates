// provide existing vpc id for resources to deploy into
variable "existing_vpc_id" {
  type = string
}

variable "databricks_account_id" {
  type = string
}

variable "region" {
  type = string
}

variable "prefix" {
  type = string
}

variable "aws_nat_gateway_id" {
  type = string
}

//contains only 2 subnets cidr blocks
variable "private_subnet_pair" {
  type = list(string)
}

#One per subnet
variable "availability_zones" {
  type = list(string)
}

variable "security_group_ids" {
  type = list(string)
}

variable "tags" {
  type = map(string)
}

variable "private_dns_enabled" {
  type = bool
  description = "Can only be true for one workspace, DNS applied across the VPC"
}
