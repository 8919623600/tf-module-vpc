resource "aws_vpc_peering_connection" "roboshop-default-peering" {
#   peer_owner_id = var.peer_owner_id        Though both vpc's are in same account so dont need this
  peer_vpc_id   = aws_vpc.roboshop_vpc.id
  vpc_id        = var.DEFAULT_VPC_ID
}