resource "aws_nat_gateway" "webapp_NAT" {
  allocation_id = var.nat_allocation_eip
  subnet_id     = var.nat_sub_id

  tags = {
    Name = var.NAT_name
  }
}

resource "aws_eip" "webapp_eip" {
  vpc = true
}
