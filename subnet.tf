#subnet1_creation

resource "aws_subnet" "web-subnet1" {
  vpc_id                  = aws_vpc.yashvpc.id
  cidr_block              = var.cidr_subnet1
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"
  tags = {
    name = "web-subnet1"
  }
}


resource "aws_subnet" "web-subnet2" {
  vpc_id                  = aws_vpc.yashvpc.id
  cidr_block              = var.cidr_subnet2
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"
  tags = {
    name = "web-subnet2"
  }
}

resource "aws_subnet" "application-subnet1" {
  vpc_id                  = aws_vpc.yashvpc.id
  cidr_block              = var.cidr_subnet3
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"
  tags = {
    name = "application-subnet1"
  }
}
resource "aws_subnet" "application-subnet2" {
  vpc_id                  = aws_vpc.yashvpc.id
  cidr_block              = var.cidr_subnet4
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"
  tags = {
    name = "application-subnet2"
  }
}

resource "aws_subnet" "database-subnet1" {
  vpc_id                  = aws_vpc.yashvpc.id
  cidr_block              = var.cidr_subnet5
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"
  tags = {
    name = "database-subnet1"
  }
}

resource "aws_subnet" "database-subnet2" {
  vpc_id                  = aws_vpc.yashvpc.id
  cidr_block              = var.cidr_subnet6
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"
  tags = {
    name = "database-subnet2"
  }
}
