# Create a new VPC

resource "aws_vpc" "main" {
  cidr_block = var.cidr_block #"10.0.0.0/16"
  tags = {
    Name = var.vpc_name
  }
}

# Create public subnet

resource "aws_subnet" "public_subnet" {
  count = 1
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr_block
  availability_zone = "eu-west-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.environment}-public-subnet"
  }
}



# Conditionally creating an IGW and attach to VPC

resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.main.id
  count  = var.create_internet_gateway ? 1 : 0

  tags = {
    Name = "${var.environment}-igw"
  }
}

  
# conditionally creating route table

resource "aws_route_table" "my_route_table" {
  count = var.create_internet_gateway ? 1 : 0

  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0" # Represents all traffic destined for outside the VPC

    # If the create_internet_gateway is set to true, the gateway id will be set to my_igw, else the gateway id will be set to null (avoiding any errors)
    gateway_id = aws_internet_gateway.my_igw[0].id
  }
  tags = {
    Name = "${var.environment}-rt"
  }
}

# Associate route table with subnet

resource "aws_route_table_association" "public_associations" {
  count          = var.create_internet_gateway ? 1 : 0
  subnet_id      = aws_subnet.public_subnet[0].id
  route_table_id = aws_route_table.my_route_table[0].id
}


