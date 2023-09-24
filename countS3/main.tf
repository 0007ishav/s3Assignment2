resource "aws_s3_bucket" "ishav-bucket" {
  bucket = var.bucket
  
  tags = var.s3_tags
}