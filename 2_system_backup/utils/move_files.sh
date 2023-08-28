#!/bin/bash

source /scripts/system_backup/constants/dirs_paths.sh

function move_files_from_tmp_to_archive_dir {
  mv -f "${TMP_ARCHIVE_PATH}/*" "${ARCHIVE_PATH}/"
}
