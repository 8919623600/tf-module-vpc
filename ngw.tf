# elastic ip
resource "aws_eip" "ngw_ip" {
  domain =  "vpc"

  tags = {
    Name = "roboshop-${var.ENV}-eip"
  }
}

resource "aws_nat_gateway" "ng" {
  allocation_id = aws_eip.ngw_ip.id
  subnet_id     = aws_subnet.public_subnet.*.id[0]

  tags = {
    Name = "roboshop-${var.ENV}-ng"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC and eip.
  depends_on = [aws_internet_gateway.igw , aws_eip.ngw_ip]
}