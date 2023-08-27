#!/bin/bash

function check_is_apache_running {
  ps cax | grep httpd
  if [ $? -eq 1 ]
    then
    echo "Apache2 is running."
  else if [ $? -eq 0 ];
    then
    echo "Error! Apache2 is not running."
    exit 1
  fi
  fi
}
