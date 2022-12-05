terraform {
  backend "s3" {
    bucket = "nonprod-acs730-assignment1-adhal"     // Bucket where to SAVE Terraform State
    key    = "nonprod-webservers/terraform.tfstate" // Object name in the bucket to SAVE Terraform State
    region = "us-east-1"                            // Region where bucket is created
  }
}