# VPC vars________________________________________

cidr_block = "10.3.0.0/16"
environment = "prod"
vpc_name = "prod-vpc"
subnet_cidr_block = "10.3.0.0/24"
public_subnet_name = "public-subnet"
create_internet_gateway = true

# Security group vars______________________________

name = "prod-sg"

# EC2 vars__________________________________________

instance_name = "prod-web-app"
ami           = "ami-019374baf467d6601"
instance_type = "t2.micro"