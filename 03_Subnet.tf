#### Public Subnet 2EA ####  
resource "aws_subnet" "PUB_a" {
  vpc_id     = aws_vpc.team_VPC.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "PUB_a"
  }
}
resource "aws_subnet" "PUB_c" {
  vpc_id     = aws_vpc.team_VPC.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    Name = "PUB_c"
  }
}


#### Private Subnet 6EA ####    
resource "aws_subnet" "WEB_a" {
  vpc_id     = aws_vpc.team_VPC.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "WEB_a"
  }
}
resource "aws_subnet" "WEB_c" {
  vpc_id     = aws_vpc.team_VPC.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    Name = "WEB_c"
  }
}
resource "aws_subnet" "WAS_a" {
  vpc_id     = aws_vpc.team_VPC.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "WAS_a"
  }
}
resource "aws_subnet" "WAS_c" {
  vpc_id     = aws_vpc.team_VPC.id
  cidr_block = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    Name = "WAS_c"
  }
}
resource "aws_subnet" "DB_a" {
  vpc_id     = aws_vpc.team_VPC.id
  cidr_block = "10.0.6.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "DB_a"
  }
}
resource "aws_subnet" "DB_c" {
  vpc_id     = aws_vpc.team_VPC.id
  cidr_block = "10.0.7.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    Name = "DB_c"
  }
}