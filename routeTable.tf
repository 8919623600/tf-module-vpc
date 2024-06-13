resource "aws_route_table" "public_subnet_rt_association" {
  vpc_id = aws_vpc.roboshop_vpc.id

  route {
    cidr_block   = "0.0.0.0/0"
    gateway_id   = aws_internet_gateway.igw.id
  }

  
  tags = {
    Name = "${var.ENV}-public_rt"
  }
}

# route table association with public subnet
resource "aws_route_table_association" "public_rt" {
  count            = length(aws_subnet.public_subnet.*.id)
  subnet_id        = element(aws_subnet.public_subnet.*.id, count.index)  # star given because it will fetch all list. if we want to fetch 1st element then instead of * we can give [0]
  route_table_id   = aws_route_table.public_subnet_rt_association.id
}

resource "aws_route_table" "private_subnet_rt_association" {
  vpc_id = aws_vpc.roboshop_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ng.id
  }

  
  tags = {
    Name = "${var.ENV}-private_rt"
  }
}


resource "aws_route_table_association" "private_rt" {
  count            = length(aws_subnet.private_subnet.*.id)
  subnet_id        = element(aws_subnet.private_subnet.*.id, count.index)
  route_table_id   = aws_route_table.private_subnet_rt_association.id
}