resource "aws_subnet" "app_subnet1" {
  vpc_id                  = aws_vpc.three-tier-vpc.id
  cidr_block              = var.app-subnet1-cidr
  availability_zone       = var.availability_zone-1
  map_public_ip_on_launch = false

  tags = {
    Name = var.app-subnet1-name
  }
}

resource "aws_subnet" "app-subnet2" {
  vpc_id                  = aws_vpc.three-tier-vpc.id
  cidr_block              = var.app-subnet2-cidr
  availability_zone       = var.availability-zone-2
  map_public_ip_on_launch = false

  tags = {
    Name = var.app-subnet2-name
  }

}