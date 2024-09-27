output "bastion_public_ip" {
  value = aws_instance.bastion.public_ip
}

output "kiosk_private_ip" {
  value = aws_instance.kiosk.private_ip
}

output "bastion_ip" {
  value = aws_instance.bastion.public_ip
}

output "kiosk_ip" {
  value = aws_instance.kiosk.private_ip
}

output "frontend_ecr_url" {
  value = aws_ecr_repository.frontend.repository_url
}

output "backend_ecr_url" {
  value = aws_ecr_repository.backend.repository_url
}
