#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

source "$DIR/../../constants/dirs_paths.sh"

function make_backup_dir {
  sudo mkdir "${ARCHIVE_PATH}"
}

function make_tmp_backup_dir {
  mkdir "${TMP_ARCHIVE_PATH}"
}
