locals {
  alb_sg_http_from_port   = 80
  alb_sg_http_to_port     = 80
  alb_sg_http_ip_protocol = "tcp"
  alb_sg_http_description = "Allow HTTP"
  alb_sg_http_cidr_ipv4   = "0.0.0.0/0"
  alb_sg_ssh_from_port    = 22
  alb_sg_ssh_to_port      = 22
  alb_sg_ssh_ip_protocol  = "tcp"
  alb_sg_ssh_description  = "Allow SSH"
  alb_sg_ssh_cidr_ipv4    = "0.0.0.0/0"
  alb_sg_icmp_from_port   = -1
  alb_sg_icmp_to_port     = -1
  alb_sg_icmp_ip_protocol = "icmp"
  alb_sg_icmp_description = "Allow ICMP"
  alb_sg_icmp_cidr_ipv4   = "0.0.0.0/0"
}