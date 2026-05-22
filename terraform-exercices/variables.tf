variable "db_password" {
  description = "mot de passe d'acces a la DB"
  sensitive = true
}

variable "region" {
  description = "la region AWS ou les ressources vont etre deployees"
}

variable "vpc_cidr" {
  description = "le CIDR du VPC"
}

variable "subnet_public_cidr" {
  description = "le CIDR du subnet public"
}

variable "subnet_private_cidr" {
  description = "le CIDR du subnet prive"
}

variable "vpc_name" {
  description = "le nom du VPC"
}