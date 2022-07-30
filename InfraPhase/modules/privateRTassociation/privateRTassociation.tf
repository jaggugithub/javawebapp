resource "aws_route_table_association" "pri_webapp_rtassociate_subnet" {
  subnet_id      = var.pri_rtsub_id
  route_table_id = var.pri_rtassociate_id
}