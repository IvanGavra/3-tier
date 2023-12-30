resource "aws_security_group" "asg-security_group-web" {
  name        = var.asg-sg-name
  description = "ASG Securiry group"
  vpc_id      = aws_vpc.three-tier-vpc.id

  ingress {
    description     = "HTTP from ALB"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.alb-web-sg.id]
  }
  ingress {
    description = "SSH from Anywere IP"
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = var.asg-sg-name
  }
}