resource "aws_subnet" "StudentPlacement-Frankfurt-restricted-subnet-1b" {
  vpc_id     = aws_vpc.StudentPlacement-Frankfurt-vpc.id
  cidr_block = "172.24.3.32/27"
  map_public_ip_on_launch = false
  availability_zone = "us-east-1b"

  tags = {
    Name = "StudentPlacement-Frankfurt-restricted-subnet-1b"
  }
}



resource "aws_route_table_association" "StudentPlacement-Frankfurt-restricted-1b-association" {
  subnet_id      = aws_subnet.StudentPlacement-Frankfurt-restricted-subnet-1b.id
}