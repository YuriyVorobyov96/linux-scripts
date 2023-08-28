#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

source /scripts/prepare_linux/constants/colors.sh

function check_is_ssh_server_running {
  ps aux | grep sshd
  if [ $? -eq 1 ]
    then
    echo -e "${GREEN}SSH server is running.${NC}"
  else if [ $? -eq 0 ];
    then
    echo -e "${RED}Error! SSH server is not running.${NC}"
    exit 1
  fi
  fi
}
