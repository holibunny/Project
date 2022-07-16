resource "aws_route_table_association" "WEB_c_association" {
  subnet_id      = aws_subnet.WEB_c.id
  route_table_id = aws_route_table.RT_Private-c.id
} 
resource "aws_route_table_association" "WAS_c_association" {
  subnet_id      = aws_subnet.WAS_c.id
  route_table_id = aws_route_table.RT_Private-c.id
} 
resource "aws_route_table_association" "DB_c_association" {
  subnet_id      = aws_subnet.DB_c.id
  route_table_id = aws_route_table.RT_Private-c.id
}