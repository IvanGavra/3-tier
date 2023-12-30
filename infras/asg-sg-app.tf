resource "aws_security_group" "asg-sg-app" {
  name        = var.asg-sg-app-name
  description = "ASG security_group"
  vpc_id      = aws_vpc.three-tier-vpc.id

  ingress {
    description     = "HTTP from ALB"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.alb-security_group-app.id]
  }
  ingress {
    description     = "SSH form Anyware"
    from_port       = 22
    to_port         = 22
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
    Name = var.asg-sg-app-name
  }
}