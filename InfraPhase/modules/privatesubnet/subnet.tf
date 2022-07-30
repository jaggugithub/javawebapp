resource "aws_subnet" "webapp_privatesubnet" {
  vpc_id     = var.privpcid
  cidr_block = var.privatesubnet_cidr
  map_public_ip_on_launch = false

  tags = {
    Name = var.privatesubnet_name
  }
}