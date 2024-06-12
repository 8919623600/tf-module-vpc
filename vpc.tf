resource "aws_vpc" "roboshop_vpc" {
  cidr_block       = var.VPC_CIDR
  instance_tenancy = "default"

  tags = {
    Name = "roboshop-${var.ENV}-vpc"
  }
}
