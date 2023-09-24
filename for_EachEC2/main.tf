resource "aws_instance" "myEC2Instance" {
 
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name

  tags = var.tags
  volume_tags = var.volume_tags
}