variable "ami_id" {
  type = string
}

variable "instancetype" {
  type = string
}

variable "instance_count" {
  type = number
}

variable "servername" {
  description = "Names Of the EC2 Instances"
  type        = list(string)
}

variable "environment" {
  type = string
}

variable "key" {
  type = string
}

variable "publicsubnet_id" {
  type = string
}

variable "sgid" {
  type = list(string)
}