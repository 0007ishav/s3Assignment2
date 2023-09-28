
resource "aws_security_group" "mySecurityGroup7" {
  name        = "ishav-security-group"
  description = "This is ishav's security group."

  # Use the instance_id output from the ec2-instance module as a source for inbound traffic
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks =  var.cidr_blocks # Use the output value as input
  }
}
