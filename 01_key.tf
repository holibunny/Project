resource "aws_key_pair" "team_key" {    ## key_name과 다르게 ID 값에 . 사용 불가
  key_name   = "team.key"  ## 키 이름
  public_key = file("C:/users/user/.ssh/team.key.pub") # 키 위치
}