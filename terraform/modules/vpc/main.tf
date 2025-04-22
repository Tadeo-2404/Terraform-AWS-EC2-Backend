module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = local.aws_vpc_name
  cidr = local.aws_vpc_cidr_block

  azs             = [var.aws_az]
  private_subnets = local.aws_private_subnet_cidr_block
  public_subnets  = local.aws_public_subnet_cidr_block

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}