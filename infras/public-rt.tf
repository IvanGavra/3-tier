resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.three-tier-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id  = aws_internet_gateway.internet-gw.id
  }

  tags = {
    Name = var.public-rt-name
  }

}

resource "aws_route_table_association" "pub-rt-association-1" {
  subnet_id      = aws_subnet.web_subnet1.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "pub-rt-association2" {
  subnet_id      = aws_subnet.web-subnet2.id
  route_table_id = aws_route_table.public-rt.id

}