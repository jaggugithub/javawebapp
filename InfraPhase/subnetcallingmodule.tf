module "publicsubnet" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/publicsubnet?ref=main"

  pubvpcid          = module.vpc.vpc_id
  publicsubnet_cidr = var.publicsubnet_cidrblock
  publicsubnet_name = var.publicsubnetname

}

module "privatesubnet" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/privatesubnet?ref=main"

  privpcid           = module.vpc.vpc_id
  privatesubnet_cidr = var.privatesubnet_cidrblock
  privatesubnet_name = var.privatesubnetname

}