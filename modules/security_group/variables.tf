variable "vpc_id" {
    description = "VPC ID"
    type = string
}

variable "allowed_ssh_ip" {
  description = "The IP address allowed to SSH into the EC2 instance"
  type        = string
}
variable "name" {
  description = "The name of the security group"
  type        = string
  default     = "security-group"
}
