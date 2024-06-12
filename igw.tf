resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.roboshop_vpc.id

  tags = {
    Name = "roboshop-${var.ENV}-ig"
  }
}