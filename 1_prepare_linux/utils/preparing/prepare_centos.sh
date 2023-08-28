#!/bin/bash

source /scripts/prepare_linux/utils/checking/check_httpd.sh
source /scripts/prepare_linux/utils/checking/check_python.sh
source /scripts/prepare_linux/utils/checking/check_ssh.sh

function prepare_centos {
  sudo yum update -y

  sudo yum update httpd -y
  sudo yum install httpd -y
  sudo firewall-cmd --permanent --add-service=http
  sudo firewall-cmd --permanent --add-service=https
  sudo firewall-cmd --reload
  sudo systemctl start httpd
  sudo systemctl enable httpd
  check_is_apache_running

  sudo apt install python3
  check_is_python_running

  sudo yum install openssh-server openssh-clients –y
  sudo firewall-cmd --permanent --add-service=ssh
  sudo firewall-cmd --reload
  sudo systemctl start sshd
  sudo systemctl enable sshd
  check_is_ssh_server_running
}
