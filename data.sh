#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
yum install –y git
sudo git clone https://github.com/GOUSERABBANI44/ecomm.git
cd /
sudo mv ecomm/* /var/www/html/

