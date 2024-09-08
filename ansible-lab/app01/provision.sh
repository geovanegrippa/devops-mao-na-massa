#/bin/sh
cat << EOT >> /home/vagrant/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDhC0nXpQVuxJzJLVKGI2L2xx6+5f+H3xGC1imuELVaWSa9cAImrZ7gxJenvj9FoqvtTwm8uHNx36uQtFHeijIiqmkPBNNru9YLuNzBxVCMrhvvuXOrdVQ3BpMVr5wGheZM16P6FqrSRKNrAtFVG2G/4euUodCEoc0r6/NNhumO69HlrBNlXXrSkf16XwHnDIg6i+GBwNVsW+5+gyVWkzHQWHJwdwjwWyaUc1bsModVhQcfh0awR7wttQh0tUceA2/OjpM33XBXPhTJDq5qH0cYKc+HFBZqsbeYUJmXj9fxcpdlA6scbK8ZNoVnWFjTXtQIzfpQAxWbc/D9C7a9EJxZ vagrant@control-node
EOT

cd /etc/yum.repos.d/
sudo sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
sudo sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
sudo yum update -y >/dev/null 2>&1