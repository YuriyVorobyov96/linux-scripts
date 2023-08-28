#!/bin/bash

source /scripts/system_backup/constants/dirs_paths.sh

function make_backup_dir {
  sudo mkdir "${ARCHIVE_PATH}"
}

function make_tmp_backup_dir {
  mkdir "${TMP_ARCHIVE_PATH}"
}
