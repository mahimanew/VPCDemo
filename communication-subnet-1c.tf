resource "aws_subnet" "StudentPlacement-Frankfurt-communication-subnet-1c" {
  vpc_id     = aws_vpc.StudentPlacement-Frankfurt-vpc.id
  cidr_block = "172.24.0.192/27"
  map_public_ip_on_launch = false
  availability_zone = "us-east-1c"

  tags = {
    Name = "StudentPlacement-Frankfurt-communication-subnet-1c"
  }
}

