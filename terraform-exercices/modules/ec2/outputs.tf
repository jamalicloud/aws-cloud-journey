output "instance_id" {
  description = "ID de l'instance EC2"
  value       = aws_instance.ec2.id
}

output "public_ip" {
  description = "IP publique de l'instance"
  value       = aws_instance.ec2.public_ip
}