resource "aws_security_group" "open_ssh" {
  name        = var.name
  description = var.description
  vpc_id      = var.vpc-id

  ingress {
    description = "Open SSH Port"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.sg_ingress_cidrblock]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.SG_Name
  }
}
