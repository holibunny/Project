# Subnet group 생성
resource "aws_db_subnet_group" "az-rds-group" {
    name = "az-rds-group"
    subnet_ids = [aws_subnet.DB_a.id, aws_subnet.DB_c.id]

    tags = {
      "name" = "az-rds-group"
    }
}