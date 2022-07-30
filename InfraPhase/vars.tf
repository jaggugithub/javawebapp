variable "typeofinstance" {
  type    = string
  default = "t2.micro"
}

variable "instancecount" {
  type    = number
  default = "2"
}

variable "AWS_REGION" {
  type    = string
  default = "eu-west-2"
}

variable "AWS_PROFILE" {
  type    = string
  default = "training"
}

variable "ENV" {
  type    = string
  default = "Development"
}

variable "instance_Name" {
  description = "Names Of the EC2 Instances"
  type        = list(string)
  default     = ["TomcatServer", "DockerServer"]
}

variable "Public-Key" {
  type    = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDI9UaXMlDp8UXknpxkj2DDGcBk9Q06I4LPMghD2RON+FG2CGEnksye5UB13XXrXXKPknbVmedZYSONT+jTDSAF7GxlSIN/R7it10JX9xDWAXx/STMqOAe4neBfnHnBSs577QMDNKe6zmbkXvOQr8cmwIExjrxJ16LzspyseBwpDJ+DS7tXsKYDaNcic+SdXcKJIAXRZmnsKYnsKE5yw2jLpXHgeGtsTPpyi6AlpsRo8gC8c5ujAINweUrikBZwRCEc4eK+/nZSMr2RLbWtdNZaqFwBSk+SfqhdOhn+OfxVBdk7AcglU/MeRpKxESDyhlwPx4ty9NBASkoDhPkyQKCC3VS45NQhmbIjQMblI6ToBb4U+irHSWTS2Hx21IJrSXe0iM2mOjiq3Zi0WFTVN2MkmGA+Kn6/597nfNmDK/FSu4XBpzZ2Z6lpV0MYwwaIcgRgvperadt6aBawAbe903LpngptYZwcbKL9wFaYrcAzdchQ28RUBTwHOyAbrDmRA8Jj9f7mvEW9xk/KogESvMO+j4R/brN19d2S4kAo6lGSB6s+jidjgqTuvReA9vBkzfRZa6+kca8d9o+sCb34OQKsLghB9iKaRMyXj4ChbyAI5ztokZr1JYYH5cmKlhS/liRDq6tRmIRhyBpmwXyVE6nK+TzzMnwLRKjLuk9NyYDqNQ== jaggu199@gmail.com"
}

variable "Key-Name" {
  type    = string
  default = "webapp-key"
}

variable "SGName" {
  type    = string
  default = "webapp-sg"
}

variable "sgname" {
  type    = string
  default = "Webapp-SG"
}

variable "SGdescription" {
  type    = string
  default = "Allow SSH"
}

variable "vpcname" {
  type    = string
  default = "webapp-vpc"
}

variable "vpccidrblock" {
  type    = string
  default = "35.1.1.0/24"
}

variable "publicsubnetname" {
  type    = string
  default = "webapp-publicsubnet"
}

variable "publicsubnet_cidrblock" {
  type    = string
  default = "35.1.1.0/26"
}

variable "privatesubnetname" {
  type    = string
  default = "webapp-privatesubnet"
}

variable "privatesubnet_cidrblock" {
  type    = string
  default = "35.1.1.128/26"
}

variable "igname" {
  type    = string
  default = "webapp-IG"
}

variable "rtcidr" {
  type    = string
  default = "0.0.0.0/0"
}

variable "publicrtname" {
  type    = string
  default = "webapp-public-RT"
}

variable "privatertname" {
  type    = string
  default = "webapp-private-RT"
}

variable "natname" {
  type    = string
  default = "webapp-NAT"
}

variable "public_route_cidr" {
  type    = string
  default = "0.0.0.0/0"
}

variable "private_route_cidr" {
  type    = string
  default = "0.0.0.0/0"
}