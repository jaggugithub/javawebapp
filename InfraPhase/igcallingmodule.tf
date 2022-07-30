module "igw" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/internetgateway?ref=main"

  IG_VPC  = module.vpc.vpc_id
  IG_name = var.igname

}

module "eip" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/elasticip?ref=main"

  eip_vpc = true

}

module "ngw" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/natgateway?ref=main"

  nat_allocation_eip = module.eip.eip_natgateway
  nat_sub_id         = module.publicsubnet.publicsubnet_id
  NAT_name           = var.natname

}
