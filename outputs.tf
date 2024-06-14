output "PUBLIC_SUBNET_IDS" {
    value = aws_subnet.PUBLIC_SUBNET_IDS.*.id

  }

#    output "private_subnet_id" {
#     value = aws_subnet.private_subnet.*.id
#   }
