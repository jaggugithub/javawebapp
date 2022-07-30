module "SG_module" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/securitygroup?ref=main"

  vpc-id               = module.vpc.vpc_id
  name                 = var.SGName
  description          = var.SGdescription
  SG_Name              = var.sgname
  sg_ingress_cidrblock = "0.0.0.0/0" # module.publicsubnet.webapp_publicsubnet_cidr

}
