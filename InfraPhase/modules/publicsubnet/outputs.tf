output "publicsubnet_id" {
    value = aws_subnet.webapp_publicsubnet.id
}

output "webapp_publicsubnet_cidr" {
    value = aws_subnet.webapp_publicsubnet.cidr_block
}