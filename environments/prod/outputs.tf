output "public_subnet_id" {
  value       = module.vpc.public_subnet_id
  description = "The ID of the public subnet"
}

output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "The ID of the VPC"
}

output "debug_allowed_ssh_ip" {
  description = "The IP address range that is allowed SSH access to the EC2 instances"
  value       = var.allowed_ssh_ip
}

output "security_group_id" {
  value       = module.security_group.security_group_id
  description = "The ID of the security group"
}

# Output the private key for your reference
output "private_key" {
  value       = module.ec2.private_key
  sensitive   = true
  description = "Private key for SSH access"
}

output "ec2_public_ip" {
  value = module.ec2.ec2_public_ip
  description = "Public IP of ec2 instance"
}
