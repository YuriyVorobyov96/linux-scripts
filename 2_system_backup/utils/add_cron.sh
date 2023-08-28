#!/bin/bash

function add_cronjob {
  cron="30 18 * * 5 /scripts/system_backup/backup.sh"

  if ! sudo crontab -l | fgrep -q "$cron" ;
    then
      sudo crontab -l > allcrons
      echo "$cron" >> allcrons
      sudo crontab allcrons
      rm allcrons
  fi
}
