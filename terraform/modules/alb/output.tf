output "alb_id" {
  description = "ALB id"
  value       = module.alb.id
}

output "alb_dns_name" {
  description = "ALB DNS name"
  value       = module.alb.dns_name
}