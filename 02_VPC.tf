resource "aws_vpc" "team_VPC" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {             ## 속성으로 이름 지정 못하면 tag로 리소스 이름 지정
    Name = "team_VPC"  ## aws VPC 이름
  }
}