#!/bin/bash

source /scripts/prepare_linux/constants/colors.sh

function check_is_python_running {
  if [[ "$(python3 -V)" =~ "Python 3" ]];
    then
    echo -e "${GREEN}Python is installed.${NC}"
  else if [ $? -eq 0 ];
    then
    echo -e "${RED}Error! Python is not installed.${NC}"
    exit 1
  fi
  fi
}
