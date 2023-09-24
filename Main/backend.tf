terraform {
  backend "s3" {
    bucket = "ishav-back-bucket"
    key = "ishav.tfstate"
    region = "ap-south-1"
  }
}