variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "aws_az" {
  description = "AWS AZ"
  type        = string
  default     = "us-east-1a"
}

variable "aws_az_backup" {
  description = "AWS AZ"
  type        = string
  default     = "us-east-1b"
}