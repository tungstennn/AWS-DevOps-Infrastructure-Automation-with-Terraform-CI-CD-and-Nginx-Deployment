module "vpc" {
  source                  = "../../modules/vpc"
  cidr_block              = var.cidr_block
  create_internet_gateway = var.create_internet_gateway
  environment             = var.environment
  vpc_name                = var.vpc_name
  subnet_cidr_block       = var.subnet_cidr_block
  public_subnet_name      = var.public_subnet_name
}

module "security_group" {
  source         = "../../modules/security_group"
  vpc_id         = module.vpc.vpc_id
  name           = "${var.environment}-web-sg"
  allowed_ssh_ip = var.allowed_ssh_ip
}

module "ec2" {
  source            = "../../modules/ec2"
  instance_name     = var.instance_name
  subnet_id         = module.vpc.public_subnet_id
  security_group_id = module.security_group.security_group_id
  instance_type     = var.instance_type
  ami               = var.ami
}
