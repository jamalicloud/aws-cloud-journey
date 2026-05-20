output "vpc_id" {
  description = "ID du VPC"
  value = aws_vpc.LabVPC.id
}

output "subnet_public_id" {
  description = "ID du subnet public"
  value = aws_subnet.public.id
}

output "subnet_private_id" {
  description = "ID du subnet privé"
  value = aws_subnet.private.id
}