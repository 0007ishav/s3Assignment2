Name = {
    "ishav1" = {
      ami           = "ami-067c21fb1979f0b27"
      instance_type = "t2.micro"
    }
    "ishav2" = {
      ami           = "ami-067c21fb1979f0b27"
      instance_type = "t2.micro"
    }
    "ishav3" = {
      ami           = "ami-067c21fb1979f0b27"
      instance_type = "t2.micro"
    }
  }

tags = {
    name = "Ishav",
    Owner = "ishav@cloudeq.com",
    Purpose = "Training"    
}

volume_tags = {
    name = "Ishav",
    Owner = "ishav@cloudeq.com",
    Purpose = "Training"    
}
key_name = "ishav_key"

bucket_names = [ "ishav1bucket", "ishav2bucket" ]

s3_tags = {
  "name" = "Ishav",
  "Owner"="ishav@cloudeq.com",
  Purpose = "Training",
  "Environment" = "Dev"
}
