#!/bin/bash

source /scripts/prepare_linux/constants/colors.sh

function check_is_apache_running {
  ps cax | grep httpd &> /dev/null
  if [ $? -eq 0 ];
    then
      echo -e "${GREEN}Apache2 is running.${NC}"
    else
      echo -e "${RED}Error! Apache2 is not running.${NC}"
      exit 1
  fi
}
