# resource "aws_placement_group" "jylee_pg" {  ## 배치그룹
#   name     = "jylee-pg"
#   strategy = "cluster" ## 배치전략 단위 : 짧은 네트워크 지연 시간, 높은 네트워크 처리량을 요하는 애플리케이션에 권장
# }

resource "aws_autoscaling_group" "ASG_was" {
  name                      = "ASG-was"
  max_size                  = 10
  min_size                  = 2
  desired_capacity          = 2  ## 원하는 갯수
  health_check_grace_period = 60 ## 헬스체크까지 대기 시간 (초)
  health_check_type         = "EC2"
  force_delete              = false ## 인스턴스 완전 종료전에 대기 않고 ASG 삭제 허용
  launch_configuration      = aws_launch_configuration.ASG_was_lacf.name  ## 시작 구성
  vpc_zone_identifier       = [aws_subnet.WAS_a.id, aws_subnet.WAS_c.id] 
}