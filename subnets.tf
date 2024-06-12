resource "aws_subnet" "public_subnet" {
  count                    = length(var.PUBLIC_SUBNET_CIDR)                     # it will read number of cidr are there accordingly it will create that many number of subnet
  vpc_id                   = aws_vpc.roboshop_vpc.id
  cidr_block               = element(var.PUBLIC_SUBNET_CIDR, count.index)      # element will pick the value from list 
  map_public_ip_on_launch  = true
  availability_zone        = lenght(var.AZ)

  tags = {
    Name = "roboshop-${var.ENV}-public-subnet-${count.index}"
  }
}


resource "aws_subnet" "private_subnet" {
  count            = length(var.PRIVATE_SUBNET_CIDR)
  vpc_id           = aws_vpc.roboshop_vpc.id
  cidr_block       = element(var.PRIVATE_SUBNET_CIDR, count.index)

  tags = {
    Name = "roboshop-${var.ENV}-private-subnet-${count.index}"
  }
}