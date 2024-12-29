# VPC vars________________________________________

cidr_block = "10.2.0.0/16"
environment = "stage"
vpc_name = "stage-vpc"
subnet_cidr_block = "10.2.0.0/24"
public_subnet_name = "public-subnet"
create_internet_gateway = true

# Security group vars______________________________

name = "stage-sg"

# EC2 vars__________________________________________

instance_name = "stage-web-app"
ami           = "ami-019374baf467d6601"
instance_type = "t2.micro"