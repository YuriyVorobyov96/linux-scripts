#!/bin/bash

function check_is_python_running {
  if [[ "$(python3 -V)" =~ "Python 3" ]];
    then
    echo "Python is installed."
  else if [ $? -eq 0 ];
    then
    echo "Error! Python is not installed."
    exit 1
  fi
  fi
}
