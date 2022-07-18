resource "aws_security_group" "WAS-sg" {
  name        = "WAS-sg"
  description = "allow 3000/tcp from ALB-2, 22 from Bastion, EFS(TCP/2049) from Anywhere-IPv4"
  vpc_id      = aws_vpc.team_VPC.id
  ingress {
    description      = "EFS"
    from_port        = 2049
    to_port          = 2049
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    prefix_list_ids  = null
    security_groups  = null
    self             = null
  }  
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "WAS-sg"
  }
}

resource "aws_security_group_rule" "WAS-sg-SSH" {                 ## 보안그룹 룰 추가
  type                     = "ingress"                            ## 인바운드 규칙
  description              = "SSH"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.WAS-sg.id     ## 인바운드 규칙을 추가할 보안그룹 id
  source_security_group_id = aws_security_group.Bastion-sg.id ## 인바운드 규칙의 Source 보안그룹
}

resource "aws_security_group_rule" "WAS-sg-nodejs" {                 ## 보안그룹 룰 추가
  type                     = "ingress"                             ## 인바운드 규칙
  description              = "node.js"
  from_port                = 3000
  to_port                  = 3000
  protocol                 = "tcp"
  security_group_id        = aws_security_group.WAS-sg.id  ## 인바운드 규칙을 추가할 보안그룹 id
  source_security_group_id = aws_security_group.LB-2-sg.id ## 인바운드 규칙의 Source 보안그룹
}
