#/bin/sh
cd /etc/yum.repos.d/
sudo sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
sudo sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
sudo yum update -y >/dev/null 2>&1
sudo yum -y install epel-release
echo "inicio da instalacao do ansible"
sudo yum -y install ansible
cat <<EOT >> /etc/hosts
10.10.1.2 control-node
10.10.1.3 app01
10.10.1.4 db01
EOT