# elastic ip
resource "aws_eip" "ngw_ip" {
  domain =  "vpc"

  tags {
    name =  "roboshot-${var.ENV-eip}"
  }
}

resource "aws_nat_gateway" "ng" {
  allocation_id = aws_eip.example.id
  subnet_id     = aws_subnet.example.id

  tags = {
    Name = "${var.ENV-ng}"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw , aws_eip.ngw_ip]
}