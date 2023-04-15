resource "aws_nat_gateway" "nat-gw-faz" {
  allocation_id = aws_eip.elastic-ip-1a.id
  subnet_id     = aws_subnet.first-public-subnet.id
}

resource "aws_nat_gateway" "nat-gw-saz" {
  allocation_id = aws_eip.elastic-ip-1b.id
  subnet_id     = aws_subnet.second-public-subnet.id
}

