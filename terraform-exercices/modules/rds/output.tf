output "db_endpoint" {
  description = "Endpoint de connexion à la base de données"
  value       = aws_db_instance.rds_instance.endpoint
}

output "db_instance_id" {
  description = "ID de l'instance RDS"
  value       = aws_db_instance.rds_instance.id
}