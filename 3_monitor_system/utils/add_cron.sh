#!/bin/bash

function add_cronjob {
  CRON="0 8 * * * bash /scripts/monitor_system/utils/logwatch.sh"

  if ! sudo crontab -l | fgrep -q "$CRON" ;
    then
      sudo crontab -l > allcrons
      echo "$CRON" >> allcrons
      sudo crontab allcrons
      rm allcrons
  fi
}
