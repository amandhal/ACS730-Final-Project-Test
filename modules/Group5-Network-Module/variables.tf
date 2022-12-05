# Default tags
variable "default_tags" {
  default     = {}
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}

# Name prefix
variable "prefix" {
  default     = "Group5"
  type        = string
  description = "Name prefix"
}

# Provision private subnets in custom VPC
variable "private_cidr_blocks" {
  default     = ["10.100.3.0/24", "10.100.4.0/24"]
  type        = list(string)
  description = "Private Subnet CIDRs"
}

# VPC CIDR range
variable "vpc_cidr" {
  default     = "10.100.0.0/16"
  type        = string
  description = "VPC prod"
}

# Variable to signal the current environment 
variable "env" {
  default     = "prod"
  type        = string
  description = "Deployment Environment"
}

variable "availability_zones" {
  default = ["us-east-1b", "us-east-1c"]
  type    = list(string)
}
