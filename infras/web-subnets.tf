resource "aws_subnet" "web_subnet1" {
  vpc_id                  = aws_vpc.three-tier-vpc.id
  cidr_block              = var.web_subnet1-cidr
  availability_zone       = var.availability_zone-1
  map_public_ip_on_launch = true

  tags = {
    Name = var.web-subnet1-name
  }
}

resource "aws_subnet" "web-subnet2" {
  vpc_id                  = aws_vpc.three-tier-vpc.id
  cidr_block              = var.web-subnet2-cidr
  availability_zone       = var.availability-zone-2
  map_public_ip_on_launch = true

  tags = {
    Name = var.web-subnet2-name
  }

}