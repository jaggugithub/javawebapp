output "vpc_id" {
    value = aws_vpc.webapp_vpc.id
}

output "vpc_cidr" {
    value = aws_vpc.webapp_vpc.cidr_block
}