#!/bin/bash

source ./utils/add_backup_dir.sh
source ./utils/move_files.sh
source ./utils/first_backup.sh
source ./utils/additional_backup.sh
source ./utils/add_cron.sh
source ./constants/dirs_paths.sh

if [ ! -d "${ARCHIVE_PATH}" ];
  then
    make_backup_dir
fi

if [ ! -d "${TMP_ARCHIVE_PATH}" ];
  then
    make_tmp_backup_dir
fi

if [ -z "$(ls -A ${ARCHIVE_DIR_PATH})" ];
  then
    first_backup
  else
    additional_backup
fi

add_cronjob
move_files_from_tmp_to_archive_dir
