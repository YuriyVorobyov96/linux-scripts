#!/bin/bash

function add_cronjob {
  CRON="30 18 * * 5 bash /scripts/system_backup/backup.sh"

  if ! sudo crontab -l | fgrep -q "$CRON" ;
    then
      sudo crontab -l > allcrons
      echo "$CRON" >> allcrons
      sudo crontab allcrons
      rm allcrons
  fi
}
