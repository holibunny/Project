resource "aws_launch_configuration" "ASG_was_lacf" {
  name                 = "ASG-was-lacf"
  image_id             = aws_ami_copy.AMI_amzn_linux.id
  instance_type        = "t2.micro"  ## 프리티어
#   iam_instance_profile = "admin_role"    ## IAM 역할은 추후 생성
  security_groups      = [aws_security_group.WAS-sg.id]  ## 보안그룹 web
  key_name             = "team.key"
#   user_data            = <<-EOF         
#                          #! /bin/bash
#                          systemctl start httpd
#                          systemctl enable httpd
#                          EOF 
} ## ec2 user_data에서 enable 안 먹을 때를 대비한 user data