output "nat_gateway" {
    value = aws_nat_gateway.webapp_NAT.id
}

output "eip_natgateway" {
    value = aws_eip.webapp_eip.id
}