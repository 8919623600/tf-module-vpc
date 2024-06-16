output "PUBLIC_SUBNET_IDS" {
    value = aws_subnet.public_subnet.*.id

  }

output "PRIVATE_SUBNET_IDS" {
    value = aws_subnet.private_subnet.*.id
  }

output "VPC_ID" {
    value = aws_vpc.roboshop_vpc.id
}

output "SG_ID" {

value = aws_security_group.roboshop_sg.id
}


# output "VPC_CIDR" {
#     value = aws_vpc.roboshop_vpc.cidr_block
# }


# output "PRIVATE_SUBNET_CIDR" {
#     value = aws_subnet.private_subnet.*.cidr_block
# }

# output "PUBLIC_SUBNET_CIDR" {
#     value = aws_subnet.public_subnet.*.cidr_block
# }



