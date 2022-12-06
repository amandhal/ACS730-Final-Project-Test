# Instance type
variable "instance_type" {
  default = {
    "prod"    = "t3.medium"
    "nonprod" = "t2.micro"
  }
  description = "Type of the instance"
  type        = map(string)
}

# Variable to signal the current environment 
variable "env" {
  default     = "prod"
  type        = string
  description = "Deployment Environment"
}

variable "availability_zones" {
  default = ["us-east-1b", "us-east-1c", "us-east-1d"]
  type    = list(string)
}


