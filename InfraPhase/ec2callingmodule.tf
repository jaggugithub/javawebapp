module "ec2" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/ec2?ref=main"

  instance_count  = var.instancecount
  ami_id          = data.aws_ami.ubuntu.id
  instancetype    = var.typeofinstance
  environment     = var.ENV
  servername      = var.instance_Name
  key             = module.key_pair.keyname
  publicsubnet_id = module.publicsubnet.publicsubnet_id
  sgid            = [module.SG_module.securitygroup_id]

}
