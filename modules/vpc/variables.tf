variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type = string
}

variable "create_internet_gateway"{
  description = "Whether to create an IGW for the VPC"
  type = bool
  default = false
}

variable "environment" {
  description = "The environment for the VPC (dev, stage, prod)"
  type = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type = string
}

variable "public_subnet_name" {
  description = "Public Subnets name"
  type = string
}

variable "subnet_cidr_block" {
  description = "The CIDR block for the subnet"
  type = string
}