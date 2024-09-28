#creating internet gateway
resource "aws_internet_gateway" "yashigw" {
  vpc_id = aws_vpc.yashvpc.id
}
