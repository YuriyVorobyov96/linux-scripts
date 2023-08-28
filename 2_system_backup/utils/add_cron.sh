#!/bin/bash

function add_cronjob {
  cron="30 18 * * 5 ~/scripts/system_backup/backup.sh"

  if ! crontab -l | fgrep -q "$cron" ;
    then
      crontab -l > allcrons
      echo "$cron" >> allcrons
      crontab allcrons
      rm allcrons
      
  fi
}
