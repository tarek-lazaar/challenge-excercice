output "public-IP" {
  description = "Public IP of shared server"
  value       = aws_instance.shared-instance.public_ip
}
output "Elvia-Machine" {
  description = "private address of the first instance"
  value       = aws_instance.elvia-instance.private_ip
}

output "Tarek-Machine" {
  description = "private address of the first instance"
  value       = aws_instance.tarek-instance.private_ip
}

output "Jabreel-Machine" {
  description = "private address of the first instance"
  value       = aws_instance.jabreel-instance.private_ip
}
output "Prageeth-Machine" {
  description = "private address of the first instance"
  value       = aws_instance.prageeth-instance.private_ip
}

output "Ayo-Machine" {
  description = "private address of the first instance"
  value       = aws_instance.ayo-instance.private_ip
}