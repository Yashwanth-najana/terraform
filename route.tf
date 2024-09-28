# Creating  route table
resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.yashvpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.yashigw.id
  }
  tags = {
    Name = "public-route-table"
  }
}

# Associating Route table
resource "aws_route_table_association" "rt1" {
  subnet_id      = aws_subnet.web-subnet1.id
  route_table_id = aws_route_table.public-route-table.id
}

# Associating Route table
resource "aws_route_table_association" "rt2" {
  subnet_id      = aws_subnet.web-subnet2.id
  route_table_id = aws_route_table.public-route-table.id
}
