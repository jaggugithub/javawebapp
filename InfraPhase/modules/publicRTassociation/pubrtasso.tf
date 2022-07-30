resource "aws_route_table_association" "pub_webapp_rtassociate_subnet" {
  subnet_id      = var.pub_rtsubnet_id
  route_table_id = var.pub_rtassociate_id
}