resource "aws_eip" "webapp_eip" {
  vpc = var.eip_vpc
}
