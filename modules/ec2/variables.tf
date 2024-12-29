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

variable "subnet_id" {
    description = "Subnet ID of instance"
    type = string
}

variable "security_group_id" {
  description = "The ID of the security group for the EC2 instance"
  type        = string
}