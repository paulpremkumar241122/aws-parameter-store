terraform {
  backend "s3" {
    bucket = "terraform-vagdevi"
    key    = "params/terraform.tfstate"
    region = "us-east-1"
  }
}