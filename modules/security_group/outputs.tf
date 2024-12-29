output "security_group_id" {
  value       = aws_security_group.web-sg.id
  description = "The ID of the security group"
}
