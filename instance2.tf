#creating 2nd EC2 instance
resource "aws_instance" "instance2" {
  ami                         = "ami-0e54eba7c51c234f6"
  instance_type               = "t2.micro"
  key_name                    = "yash"
  subnet_id                   = aws_subnet.web-subnet2.id
  vpc_security_group_ids      = [aws_security_group.securitygroup1.id]
  associate_public_ip_address = true
  user_data                   = file("data1.sh")
  tags = {
    Name = "instance2"
  }
}

