#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

source "$DIR/../checking/check_apache2.sh"
source "$DIR/../checking/check_python.sh"
source "$DIR/../checking/check_ssh.sh"

function prepare_debian {
  yes | echo "deb http://deb.debian.org/debian buster-backports main contrib non-free" | sudo tee -a /etc/apt/sources.list.d/backports.list
  sudo apt-get update -y

  sudo apt install apache2 -y
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
