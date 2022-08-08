resource "aws_subnet" "StudentPlacement-Frankfurt-communication-subnet-1a" {
  vpc_id     = aws_vpc.StudentPlacement-Frankfurt-vpc.id
  cidr_block = "172.24.0.128/27"
  map_public_ip_on_launch = false
  availability_zone = "us-east-1a"

  tags = {
    Name = "StudentPlacement-Frankfurt-communication-subnet-1a"
  }
}



resource "aws_route_table_association" "StudentPlacement-Frankfurt-communication-subnet-1a-association" {
  subnet_id      = aws_subnet.StudentPlacement-Frankfurt-communication-subnet-1a.id
}