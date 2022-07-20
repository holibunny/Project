resource "aws_lb_listener" "ALB_ex_listener" {
  load_balancer_arn = aws_lb.ALB_ex.arn        ## ALB에 리스너 연결
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"                 ## 대상그룹 쪽으로 Forwarding
    target_group_arn = aws_lb_target_group.ALB_ex_tg.arn  ## 대상그룹
  }
}