# Global variables__________________________

variable "region" {
  description = "The AWS region"
  type        = string
  default     = "eu-west-2a"
}

# VPC variables_____________________________

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type = string
  default = "10.0.3.0/16"
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
  default = "10.0.3.0/24" 
}

# Security Group variables___________________________

variable "name" {
  description = "The name of the security group"
  type        = string
  default     = "security-group"
}

variable "allowed_ssh_ip" {
  description = "The IP address allowed to SSH into the EC2 instance"
  type        = string
  default     = "0.0.0.0/0" # Allow all IPs (use only for testing)
}

# EC2 variables________________________________________

variable "ami" {
  description = "ami ID of instance"
  type = string
  # define ami ID in environment
}

variable "instance_type" {
    description = "Instance type of instance"
    type = string
    default = "t2.micro"
}

variable "instance_name" {
    description = "Name of instance"
    type = string
    # define instance_name in environment
}