resource "aws_security_group" "Bastion-sg" {
  name        = "Bastion-sg"
  description = "Allow allow 22"
  vpc_id      = aws_vpc.team_VPC.id
  ingress {                             ## 인바운드 규칙
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    prefix_list_ids  = null
    security_groups  = null
    self             = null
  }
  egress {                              ## 아웃바운드 규칙
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "Bastion-sg"
  }
}
