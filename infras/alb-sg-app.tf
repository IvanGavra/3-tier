resource "aws_security_group" "alb-security_group-app" {
  name        = var.alb-sg-app-name
  description = "ALB Secuity Group"
  vpc_id      = aws_vpc.three-tier-vpc.id

  ingress {
    description     = "HTTP from Internet"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.asg-security_group-web.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = var.alb-sg-app-name
  }
}