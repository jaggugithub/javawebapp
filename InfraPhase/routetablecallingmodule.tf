module "public_routetable" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/publicroutetable?ref=main"

  vpc_pubrt      = module.vpc.vpc_id
  rt_pub_cidr    = var.public_route_cidr
  ig_pub_gateway = module.igw.internet_gateway
  rt_pub_name    = var.publicrtname

}

module "public_routetable_association" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/publicRTassociation?ref=main"

  pub_rtsubnet_id    = module.publicsubnet.publicsubnet_id
  pub_rtassociate_id = module.public_routetable.pub_routetable_id
}

module "private_routetable" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/privateroutetable?ref=main"

  vpc_prirt       = module.vpc.vpc_id
  rt_pri_cidr     = var.private_route_cidr
  nat_pri_gateway = module.ngw.nat_gateway
  rt_pri_name     = var.privatertname

}

module "private_routetable_association" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/privateRTassociation?ref=main"

  pri_rtsub_id       = module.privatesubnet.privatesubnet_id
  pri_rtassociate_id = module.private_routetable.pri_routetable_id
}
