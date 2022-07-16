resource "aws_internet_gateway" "team_igw" {
  vpc_id = aws_vpc.team_VPC.id
  tags = {
    Name = "team_igw"
  }
}