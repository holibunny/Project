resource "aws_eip" "eip1_nat" {     ## NAT에 쓸 탄력적IP 부여
  vpc      = true
}

resource "aws_nat_gateway" "NGW-a" {
  allocation_id = aws_eip.eip1_nat.id      ## 위에서 받은 탄력적 IP
  subnet_id     = aws_subnet.PUB_a.id
  tags = {
    Name = "NGW-a"
  }
}