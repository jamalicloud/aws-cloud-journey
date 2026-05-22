variable "db_identifier" {
  description = "le nom de l'instance RDS"
}

variable "instance_type" {
  description = "type d'instance RDS"
}

variable "engine" {
  description = "le moteur de la DB (mysql, postgre...)"
}

variable "allocated_storage" {
  description = "espace de stockage alloué pour l'instance RDS"
}

variable "username" {
  description = "l'identifiant user pour administrer la db"
}

variable "password" {   #sensible variable, ne pas afficher dans les logs
  description = "le mot de passe pour administrer la db"
  sensitive = true
}

variable "vpc_id" {
  description = "l'ID du vpc ou la RDS va se situer"
}

variable "subnet_private_id" {
  description = "l'ID du subnet privé ou la RDS va se situer"
}

variable "db_name" {
  description = "Le nom de la DB"
}