#!/bin/bash

source /scripts/prepare_linux/utils/checking/check_apache2.sh
source /scripts/prepare_linux/utils/checking/check_python.sh
source /scripts/prepare_linux/utils/checking/check_ssh.sh

function prepare_ubuntu {
  yes | sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -cs)-backports main restricted universe multiverse "
  sudo apt update -y

  sudo apt install apache2  -y
  sudo ufw allow 'WWW'
  sudo systemctl start apache2
  check_is_apache_running

  sudo apt install python3
  check_is_python_running

  sudo apt install openssh-server -y
  sudo systemctl enable ssh --now
  sudo ufw allow ssh
  sudo ufw enable
  check_is_ssh_server_running
}
