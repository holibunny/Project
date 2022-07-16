resource "aws_route_table_association" "PUB_a_association" {
  subnet_id      = aws_subnet.PUB_a.id   ## 연결할 서브넷 
  route_table_id = aws_route_table.RT_Public.id  ##  해당 라우터
}

resource "aws_route_table_association" "PUB_c_association" {
  subnet_id      = aws_subnet.PUB_c.id  ## 연결할 서브넷 
  route_table_id = aws_route_table.RT_Public.id  ##  해당 라우터
} 