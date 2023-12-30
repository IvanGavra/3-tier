resource "aws_security_group" "alb-web-sg" {
  name        = var.alb-sg-web-name
  description = "ALB secutiry group"
  vpc_id      = aws_vpc.three-tier-vpc.id

  ingress {
    description = "HTTP from Internet"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    Name = var.alb-sg-web-name
  }
}

