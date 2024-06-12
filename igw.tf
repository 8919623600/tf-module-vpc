resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.roboshop_vpc.id

  tags = {
    Name = "${var.ENV}-ig"
  }
}