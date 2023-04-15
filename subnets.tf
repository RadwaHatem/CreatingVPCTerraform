resource "aws_subnet" "first-public-subnet" {
  vpc_id            = aws_vpc.first-vpc.id
  availability_zone = "us-east-1a"
  cidr_block        = "10.0.1.0/24"

  tags = {
    Name = "public-1"
  }
}

resource "aws_subnet" "second-public-subnet" {
  vpc_id            = aws_vpc.first-vpc.id
  availability_zone = "us-east-1b"
  cidr_block        = "10.0.2.0/24"

  tags = {
    Name = "public-2"
  }
}

resource "aws_subnet" "first-private-subnet" {
  vpc_id            = aws_vpc.first-vpc.id
  availability_zone = "us-east-1a"
  cidr_block        = "10.0.3.0/24"
  tags = {
    Name = "private-1"
  }
}

resource "aws_subnet" "second-private-subnet" {
  vpc_id            = aws_vpc.first-vpc.id
  availability_zone = "us-east-1b"
  cidr_block        = "10.0.4.0/24"
  tags = {
    Name = "private-2"
  }
}


