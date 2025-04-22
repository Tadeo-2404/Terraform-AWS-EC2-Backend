output "ec2_public_ips" {
  description = "Public IPs of all EC2 instances"
  value       = [for instance in aws_instance.ec2 : instance.public_ip]
}

output "ec2_key_names" {
  description = "Key names of all EC2 instances"
  value       = [for ec2 in aws_instance.ec2 : ec2.key_name]
}

output "ec2_amis" {
  description = "AMIs used for all EC2 instances"
  value       = [for ec2 in aws_instance.ec2 : ec2.ami]
}