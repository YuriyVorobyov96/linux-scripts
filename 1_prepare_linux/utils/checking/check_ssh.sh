#!/bin/bash

source /scripts/prepare_linux/constants/colors.sh

function check_is_ssh_server_running {
  ps aux | grep sshd &> /dev/null
  if [ $? -eq 0 ]
    then
      echo -e "${GREEN}SSH server is running.${NC}"
    else
      echo -e "${RED}Error! SSH server is not running.${NC}"
      exit 1
  fi
}
