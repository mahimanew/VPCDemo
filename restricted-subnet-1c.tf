resource "aws_subnet" "StudentPlacement-Frankfurt-restricted-subnet-1c" {
  vpc_id     = aws_vpc.StudentPlacement-Frankfurt-vpc.id
  cidr_block = "172.24.3.64/27"
  map_public_ip_on_launch = false
  availability_zone = "us-east-1c"

  tags = {
    Name = "StudentPlacement-Frankfurt-restricted-subnet-1c"
  }
}



resource "aws_route_table_association" "StudentPlacement-Frankfurt-restricted-1c-association" {
  subnet_id      = aws_subnet.StudentPlacement-Frankfurt-restricted-subnet-1c.id
}