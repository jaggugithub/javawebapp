resource "aws_route_table" "webapp_pri_rt" {
  vpc_id = var.vpc_prirt
  route {
    cidr_block     = var.rt_pri_cidr
    nat_gateway_id = var.nat_pri_gateway
  }
  tags = {
    Name = var.rt_pri_name
  }
}
