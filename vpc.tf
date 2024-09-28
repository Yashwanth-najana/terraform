#creating VPC
resource "aws_vpc" "yashvpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    Name = "yashvpc"
  }
}
