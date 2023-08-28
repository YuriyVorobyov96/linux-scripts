#!/bin/bash

source /scripts/system_backup/constants/dirs_paths.sh

function first_backup {
  tar cpf "${TMP_ARCHIVE_PATH}/`date '+%d-%B-%Y'`.tar" /home /etc/vsftpd.conf /etc/ssh/sshd_config /etc/xrdp/xrdp.ini
}
