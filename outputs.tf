output "PUBLIC_SUBNET_IDS" {
    value = aws_subnet.public_subnet.*.id

  }

output "PRIVATE_SUBNET_IDS" {
    value = aws_subnet.private_subnet.*.id
  }
