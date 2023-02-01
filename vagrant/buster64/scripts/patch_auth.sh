# This are security set on debian we have to remove to be able to use INITIAL Ansible
sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
systemctl restart sshd
#vagrant has no known password 
usermod --password $(openssl passwd -1 vagrant) vagrant