resource "aws_autoscaling_attachment" "ASG_was_attachment" {
  autoscaling_group_name = aws_autoscaling_group.ASG_was.id  ## asg
  lb_target_group_arn = aws_lb_target_group.ALB_in_tg.arn   ## alb 타겟그룹
}