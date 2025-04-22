terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

module "ec2" {
  source    = "./modules/ec2"
  subnet_id = module.vpc.private_subnet_id
}

module "vpc" {
  source = "./modules/vpc"
}