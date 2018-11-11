#!/bin/sh
cd tmp
yum install -y httpd httpd-devel mysql php php-pdo php-mysql php-gd git
php install.php
systemctl enable httpd.service
