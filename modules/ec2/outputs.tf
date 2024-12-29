# Output the private key for your reference
output "private_key" {
  value       = tls_private_key.my_key.private_key_pem
  sensitive   = true
  description = "Private key for SSH access"
}

output "ec2_public_ip" {
  value = aws_instance.web-app.public_ip
  description = "Public IP of ec2 instance"
}