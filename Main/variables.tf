variable "Name" {
  type = map(object({
    ami = string
    instance_type = string
  }))
  description = "Give names of instances"
}


variable "key_name" {
  type = string
  description = "Name of the existing AWS key pair"
  default = "ishav_key"
}

variable "tags" {
  type = map(string)
  description = "Give tags to instance"
  default = {
    "name" = "ishav",
    "owner" = "ishav@cloudeq.com"
  }
}
variable "volume_tags" {
  type = map(string)
  description = "Give volume tags to instance"
  default = {
    "name" = "ishav",
    "owner" = "ishav@cloudeq.com"
  }
}

variable "bucket_names" {
  type = list(string)
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

