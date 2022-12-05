
# Module to deploy basic networking 
module "vpc-prod" {
  source             = "github.com/amandhal/Group5-ACS730-Project/modules/Network-Prod"
  env                = var.env
  vpc_cidr           = var.vpc_cidr
  public_cidr_blocks = var.public_cidr_blocks
  prefix             = var.prefix
  default_tags       = var.default_tags
}