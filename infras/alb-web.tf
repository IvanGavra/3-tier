resource "aws_lb" "web-lb" {
  name               = var.alb-web-name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb-web-sg.id]
  subnets            = [aws_subnet.web_subnet1.id, aws_subnet.web-subnet2.id]
}