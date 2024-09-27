#creating 1st EC2 instance
resource "aws_instance" "instance1" {
  ami                         = "ami-0e54eba7c51c234f6"
  instance_type               = "t2.micro"
  key_name                    = "yash"
  subnet_id                   = aws_subnet.web-subnet1.id
  vpc_security_group_ids      = [aws_security_group.securitygroup1.id]
  associate_public_ip_address = true
  user_data                   = file("data.sh")
  tags = {
    Name = "instance1"
  }
}

