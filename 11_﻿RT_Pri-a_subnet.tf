resource "aws_route_table_association" "WEB_a_association" {
  subnet_id      = aws_subnet.WEB_a.id
  route_table_id = aws_route_table.RT_Private-a.id
}
resource "aws_route_table_association" "WAS_a_association" {
  subnet_id      = aws_subnet.WAS_a.id
  route_table_id = aws_route_table.RT_Private-a.id
}
resource "aws_route_table_association" "DB_a_association" {
  subnet_id      = aws_subnet.DB_a.id
  route_table_id = aws_route_table.RT_Private-a.id
}
