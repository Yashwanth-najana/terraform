# Creating a DB Subnet Group
resource "aws_db_subnet_group" "mydb" {
  name       = "main"
  subnet_ids = [aws_subnet.database-subnet1.id, aws_subnet.database-subnet2.id]
  tags = {
    Name = "my DB subnet group"
  }
}

# Creating an RDS Instance
resource "aws_db_instance" "default" {
  allocated_storage      = 10
  db_subnet_group_name   = aws_db_subnet_group.mydb.id
  engine                 = "mysql"
  engine_version         = "8.0.39"
  instance_class         = "db.t3.micro"
  multi_az               = true
  username               = "admin"
  password               = "Najana999"
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.database-securitygroup.id]
  tags = {
    Name = "mydb"
  }
}
