#!/bin/bash

function first_backup {
  sudo tar cpf /archive/"created on `date '+%d-%B-%Y'`.tar" /home /etc/vsftpd.conf /etc/ssh/sshd_config /etc/xrdp/xrdp.ini
}
