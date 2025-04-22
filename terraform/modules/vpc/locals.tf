locals {
  aws_vpc_name                         = "vpc"
  aws_vpc_cidr_block                   = "10.0.0.0/16"
  aws_public_subnet_cidr_block         = ["10.0.1.0/24"]
  aws_private_subnet_cidr_block        = ["10.0.2.0/24"]
}