#!/bin/bash

function linux_dist_detect {
  LINUX_DIST_NAME=$(awk -F= '$1=="ID" { print $2 ;}' /etc/os-release)

  echo $LINUX_DIST_NAME
}