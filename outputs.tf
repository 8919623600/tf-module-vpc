output "PUBLIC_SUBNET_ID" {
    value = aws_subnet.public_subnet.*.id

  }

#    output "private_subnet_id" {
#     value = aws_subnet.private_subnet.*.id
#   }
