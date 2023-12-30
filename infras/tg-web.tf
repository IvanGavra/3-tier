resource "aws_lb_target_group" "target-group-web" {
  name     = var.tg-web-name
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.three-tier-vpc.id
  health_check {
    path    = "/"
    matcher = 200
  }

}

resource "aws_lb_listener" "alb_listener-web" {
  load_balancer_arn = aws_lb.web-lb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target-group-web.arn
  }

}