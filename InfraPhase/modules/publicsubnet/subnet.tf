resource "aws_subnet" "webapp_publicsubnet" {
  vpc_id     = var.pubvpcid
  cidr_block = var.publicsubnet_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = var.publicsubnet_name
  }
}