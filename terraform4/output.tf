output "rackula_url" {
  description = "Rackula web interface URL"
  value       = "http://${module.rackula_server.public_ip}:8080"
}

output "rackula_port" {
  description = "Rackula public host port"
  value       = 8080
}

output "server_id" {
  description = "EC2 instance ID"
  value       = module.rackula_server.id
}

output "ssm_command" {
  description = "AWS Systems Manager Session Manager command"
  value       = "aws ssm start-session --target ${module.rackula_server.id}"
}