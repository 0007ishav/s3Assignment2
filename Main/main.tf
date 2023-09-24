module "myEC2Instance" {
    source = "../for_EachEC2"
    for_each = var.Name
    Name = each.value
    ami = each.value.ami
    instance_type = each.value.instance_type
    key_name = var.key_name
    # tags = var.tags
    # volume_tags = var.volume_tags

    tags = merge(
        var.tags,
        {
            Name = each.key
        }
    )

    volume_tags = merge(
        var.volume_tags, 
        {
            Name = each.key
        }
    )
}

module "myS3Bucket" {
  source = "../countS3"
  count = length(var.bucket_names)
  bucket = var.bucket_names[count.index]
  s3_tags = merge(
    var.s3_tags,
    {
        Name = var.bucket_names[count.index]
    }
  )
}
