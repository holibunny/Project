resource "aws_autoscaling_attachment" "ASG_web_attachment" {
  autoscaling_group_name = aws_autoscaling_group.ASG_web.id  ## asg
  lb_target_group_arn = aws_lb_target_group.ALB_ex_tg.arn   ## alb 타겟그룹
}