#!/bin/bash

source ./utils/add_backup_dir.sh
source ./utils/first_backup.sh
source ./utils/additional_backup.sh
source ./utils/add_cron.sh

ARCHIVE_DIR_PATH="/archive"

if [ ! -d "${ARCHIVE_DIR_PATH}" ];
  then
    make_backup_dir
fi

if [ -z "$(ls -A ${ARCHIVE_DIR_PATH})" ];
  then
    first_backup
  else
    additional_backup
fi

add_cronjob
