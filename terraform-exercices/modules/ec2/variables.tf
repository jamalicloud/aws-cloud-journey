variable "instance_name" {
  description = "Nom de l'instance EC2"
}

variable "ami" {
  description = "ID de l'AMI"
}

variable "instance_type" {
  description = "Type d'instance (t2.micro, t3.micro...)"
}

variable "vpc_id" {
  description = "ID du VPC"
}

variable "subnet_id" {
  description = "ID du subnet"
}

variable "key_name" {
  description = "Nom de la clé SSH"
}