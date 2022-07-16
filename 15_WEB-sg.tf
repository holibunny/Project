## 소스값이 IP가 아닌 다른 보안그룹일때, 
## 보안그룹 생성과 인바운드 규칙 추가를 별도의 resource로 취급
resource "aws_security_group" "WEB-sg" {
  name        = "WEB-sg"
  description = "allow 80 from ALB , 22 from Bastion"
  vpc_id      = aws_vpc.team_VPC.id
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "WEB-sg"
  }
}

resource "aws_security_group_rule" "WEB-sg_SSH" {
  type        = "ingress"
  description = "SSH"
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  security_group_id = "WEB-sg" ## 인바운드 규칙을 추가할 보안그룹 id
  #   cidr_blocks       = [aws_vpc.example.cidr_block]
  #   ipv6_cidr_blocks  = [aws_vpc.example.ipv6_cidr_block]
  source_security_group_id = aws_security_group.LB-1-sg.id ## 인바운드 규칙의 Source 보안그룹
}

resource "aws_security_group_rule" "WEB-sg_HTTP" {
  type              = "ingress"
  description       = "HTTP"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  security_group_id = "WEB-sg" ## 인바운드 규칙을 추가할 보안그룹 id
  #   cidr_blocks       = [aws_vpc.example.cidr_block]
  #   ipv6_cidr_blocks  = [aws_vpc.example.ipv6_cidr_block]
  source_security_group_id = aws_security_group.Bastion-sg.id ## 인바운드 규칙의 Source 보안그룹
}
