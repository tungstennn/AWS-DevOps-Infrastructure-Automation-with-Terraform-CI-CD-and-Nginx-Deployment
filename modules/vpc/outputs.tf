# retrieve the subnet ID from subnet created in the VPC module

output "public_subnet_id" {
    description = "Exposed subnet ID"
    value = aws_subnet.public_subnet[0].id
}

output "vpc_id" {
    description = "The ID of the created VPC"
    value = aws_vpc.main.id
}