resource "aws_vpc" "webapp_vpc" {

  cidr_block           = var.vpc_cidrblock
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = var.vpc_Name
  }
}