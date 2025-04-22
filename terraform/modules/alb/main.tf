module "alb" {
  source  = "terraform-aws-modules/alb/aws"

  name    = "my-alb"
  vpc_id  = var.vpc_id
  subnets = var.public_subnet_ids

  # Security Group Rules
  security_group_ingress_rules = {
    http = {
      from_port   = 80
      to_port     = 80
      ip_protocol = "tcp"
      description = "Allow HTTP"
      cidr_ipv4   = "0.0.0.0/0"
    }
    ssh = {
      from_port   = 22
      to_port     = 22
      ip_protocol = "tcp"
      description = "Allow SSH"
      cidr_ipv4   = "0.0.0.0/0"
    }
    icmp = {
      from_port   = -1
      to_port     = -1
      ip_protocol = "icmp"
      description = "Allow ICMP"
      cidr_ipv4   = "0.0.0.0/0"
    }
  }

  security_group_egress_rules = {
    all = {
      ip_protocol = "-1"
      cidr_ipv4   = "0.0.0.0/0"
    }
  }

  listeners = {
    http = {
      port     = 80
      protocol = "HTTP"
      forward = {
        target_group_key = "ec2-targets"
      }
    }
  }

  target_groups = {
    ec2-targets = {
      name_prefix = "tg"
      protocol    = "HTTP"
      port        = 80
      target_type = "instance"
      targets     = var.targets_alb
      create_attachment = false
    }
  }

  tags = {
    Environment = "dev"
    Project     = "alb-example"
  }
}
