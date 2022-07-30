output "privatesubnet_id" {
    value = "${aws_subnet.webapp_privatesubnet.id}"
}

output "webapp_privatesubnet_cidr" {
    value = "${aws_subnet.webapp_privatesubnet.cidr_block}"
}