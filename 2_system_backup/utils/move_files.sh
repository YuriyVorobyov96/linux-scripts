#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

source "$DIR/../../constants/dirs_paths.sh"

function move_files_from_tmp_to_archive_dir {
  mv -f "${TMP_ARCHIVE_PATH}/*" "${ARCHIVE_PATH}/"
}
