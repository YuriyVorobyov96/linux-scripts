#!/bin/bash

source ./utils/detection/osdetect.sh
source ./utils/detection/linux_dist_detect.sh
source ./utils/preparing/prepare_ubuntu.sh
source ./utils/preparing/prepare_debian.sh
source ./utils/preparing/prepare_centos.sh

OS_TYPE=$(os_detect)

if [[ $OS_TYPE != "Linux" ]];
  then
    echo "Error! Your current OS is ${OS_TYPE}. This utill works only with Linux"
    exit 1
fi

LINUX_DIST_NAME=$(linux_dist_detect)

LINUX_DIST_NAME="ubuntu"

IS_UBUNTU=$(expr "$LINUX_DIST_NAME" = "ubuntu")
IS_DEBIAN=$(expr "$LINUX_DIST_NAME" = "debian")
IS_CENTOS=$(expr "$LINUX_DIST_NAME" = "centos")

if [[ $IS_UBUNTU == 0 && $IS_DEBIAN && $IS_CENTOS == 0 ]];
  then
    echo "Error! Your current dist is ${LINUX_DIST_NAME}. This utill works only with Ubuntu/Debian/CentOS"
    exit 1
fi

if [[ $IS_UBUNTU == 1 ]];
  then
    prepare_ubuntu
fi

if [[ $IS_DEBIAN == 1 ]];
  then
    prepare_debian
fi

if [[ $IS_CENTOS == 1 ]];
  then
    prepare_centos
fi
