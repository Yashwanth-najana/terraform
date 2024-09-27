resource "aws_launch_template" "web-lanuch-template" {
  name_prefix            = "web-lanuch-template"
  image_id               = "ami-0e54eba7c51c234f6"
  instance_type          = "t2.micro"
  key_name               = "yash"
  vpc_security_group_ids = [aws_security_group.securitygroup1.id]
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "weblanuchinstance"
    }
  }
}
resource "aws_autoscaling_group" "web-asg" {
  desired_capacity = 3
  max_size         = 6
  min_size         = 1
  launch_template {
    id      = aws_launch_template.web-lanuch-template.id
    version = "$Latest"
  }
  vpc_zone_identifier       = [aws_subnet.web-subnet1.id, aws_subnet.web-subnet2.id]
  health_check_type         = "EC2"
  health_check_grace_period = 300
  tag {
    key                 = "Name"
    value               = "webserverinstance"
    propagate_at_launch = true
  }
}
resource "aws_autoscaling_attachment" "asg-attachements" {
  autoscaling_group_name = aws_autoscaling_group.web-asg.name
  lb_target_group_arn    = aws_lb_target_group.target-elb.arn
}

