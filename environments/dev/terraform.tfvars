# VPC vars__________________________________________

cidr_block  = "10.1.0.0/24"
environment = "dev"
vpc_name           = "dev-vpc"
subnet_cidr_block  = "10.1.0.0/28"
public_subnet_name = "public-subnet"
#  create_internet_gateway is set as the default because I I want to not allow it internet access
create_internet_gateway = true

# Security group vars______________________________

name = "dev-sg"

# EC2 vars__________________________________________

instance_name = "dev-web-app"
ami           = "ami-019374baf467d6601"
instance_type = "t2.micro"
