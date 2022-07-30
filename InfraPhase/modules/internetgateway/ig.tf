resource "aws_internet_gateway" "webapp_IG" {
  vpc_id = var.IG_VPC

  tags = {
    Name = var.IG_name
  }
}
