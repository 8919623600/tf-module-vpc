resource "aws_subnet" "public_subnet" {
  count                    = length(var.PUBLIC_SUBNET_CIDR)                     # it will read number of cidr are there accordingly it will create that many number of subnet
  vpc_id                   = aws_vpc.roboshop_vpc.id
  cidr_block               = element(var.PUBLIC_SUBNET_CIDR, count.index)      # element will pick the value from list 
  map_public_ip_on_launch  = true
  availability_zone        = element(var.AZ, count.index)

  tags = {
    Name = "roboshop-${var.ENV}-public-subnet-${count.index+1}"
  }
 
}


resource "aws_subnet" "private_subnet" {
  count                    = length(var.PRIVATE_SUBNET_CIDR)
  vpc_id                   = aws_vpc.roboshop_vpc.id
  cidr_block               = element(var.PRIVATE_SUBNET_CIDR, count.index)
  availability_zone        = element(var.AZ, count.index)

  tags = {
    Name = "roboshop-${var.ENV}-private-subnet-${count.index+1}"
  }
}

 



