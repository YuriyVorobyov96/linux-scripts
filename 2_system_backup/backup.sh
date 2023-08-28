#!/bin/bash

source /scripts/system_backup/utils/add_backup_dir.sh
source /scripts/system_backup/utils/move_files.sh
source /scripts/system_backup/utils/first_backup.sh
source /scripts/system_backup/utils/additional_backup.sh
source /scripts/system_backup/utils/add_cron.sh
source /scripts/system_backup/constants/dirs_paths.sh

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
