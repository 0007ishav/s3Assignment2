variable "bucket" {
  type = string
  description = "Give name to your bucket"
}

variable "s3_tags" {
  type = map(string)
  description = "Give tags to your bucket"
  default = {
    "name" = "ishav",
    "owner" = "ishav@cloudeq.com",
    "environment" = "dev"
  }
  
}