resource "aws_internet_gateway" "internet-gw" {
  vpc_id = aws_vpc.three-tier-vpc.id
  tags = {
    Name = var.igw-name
  }

}