output "securitygroup_id" {
  value = aws_security_group.open_ssh.id
}

output "securitygroup_name" {
  value = aws_security_group.open_ssh.name
}
