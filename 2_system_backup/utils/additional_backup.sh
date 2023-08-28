#!/bin/bash

source /scripts/system_backup/constants/dirs_paths.sh

function additional_backup {
  tar --newer-mtime=`date '+%F'` -cpf "${TMP_ARCHIVE_PATH}/`date '+%d-%B-%Y'`.tar" /home /etc/vsftpd.conf /etc/ssh/sshd_config /etc/xrdp/xrdp.ini
}
