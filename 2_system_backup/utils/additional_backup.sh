#!/bin/bash

function additional_backup {
  sudo tar cpNf /archive/`date '+%d-%B-%Y'`.tar /home /etc/vsftpd.conf /etc/ssh/sshd_config /etc/xrdp/xrdp.ini
}
