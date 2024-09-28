# Creating an External Application Load Balancer (ALB)
resource "aws_lb" "external-alb" {
  name               = "external-LB"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.securitygroup1.id]
  subnets            = [aws_subnet.web-subnet1.id, aws_subnet.web-subnet2.id]
  tags = {
    Name = "external-alb"
  }
}
# Creating a Target Group for the ALB
resource "aws_lb_target_group" "target-elb" {
  name     = "ALB-TG"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.yashvpc.id
  tags = {
    Name = "target-elb"
  }
}

# Attaching the EC2 instance to the Target Group (Instance 1)
resource "aws_lb_target_group_attachment" "attachment1" {
  target_group_arn = aws_lb_target_group.target-elb.arn
  target_id        = aws_instance.instance1.id
  port             = 80
  depends_on = [
    aws_instance.instance1
  ]
}
# Attaching the EC2 instance to the Target Group (Instance 2)
resource "aws_lb_target_group_attachment" "attachment2" {
  target_group_arn = aws_lb_target_group.target-elb.arn
  target_id        = aws_instance.instance2.id
  port             = 80
  depends_on = [
    aws_instance.instance2
  ]
}
# Creating a Listener for the ALB
resource "aws_lb_listener" "target-elb" {
  load_balancer_arn = aws_lb.external-alb.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target-elb.arn
  }
  tags = {
    Name = "target-listener"
  }
}
