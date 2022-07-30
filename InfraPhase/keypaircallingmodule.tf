module "key_pair" {

  source = "git::https://github.com/jaggugithub/webappinfra.git//modules/keypair?ref=main"

  keyname   = var.Key-Name
  publickey = var.Public-Key

}