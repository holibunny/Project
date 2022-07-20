resource "aws_route_table" "RT_Private-a" {   ## Private 라우팅 테이블
  vpc_id = aws_vpc.team_VPC.id
  route {                                     ## NGW를 연결
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.NGW-a.id
  }
  tags = {
    Name = "RT_Private-a"
  }
}