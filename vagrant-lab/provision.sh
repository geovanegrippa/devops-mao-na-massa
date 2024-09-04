#!/usr/bin/env bash
echo "Installing Apache and setting it up..."
cd /etc/yum.repos.d/
sudo sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
sudo sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
sudo yum update -y httpd >/dev/null 2>&1
sudo yum install -y httpd >/dev/null 2>&1
cp -r /vagrant/html/* /var/www/html/
sudo service httpd start