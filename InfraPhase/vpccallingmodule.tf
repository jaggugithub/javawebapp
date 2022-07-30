module "vpc" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/vpc?ref=main"

  vpc_Name      = var.vpcname
  vpc_cidrblock = var.vpccidrblock

}