resource "aws_route_table" "RT_Public" { ## PUB 라우팅 테이블
  vpc_id = aws_vpc.team_VPC.id
  route {                                 ## IGW를 연결
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.team_igw.id
  }
  tags = {
    Name = "RT_Public"
  }
} 