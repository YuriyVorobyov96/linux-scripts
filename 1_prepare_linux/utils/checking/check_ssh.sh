#!/bin/bash

function check_is_ssh_server_running {
  ps aux | grep sshd
  if [ $? -eq 1 ]
    then
    echo "SSH server is running."
  else if [ $? -eq 0 ];
    then
    echo "Error! SSH server is not running."
    exit 1
  fi
  fi
}
