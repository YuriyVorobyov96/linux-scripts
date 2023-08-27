#!/bin/bash

function add_cronjob {
  ! (crontab -l | grep -q "SYSTEM_BACKUP") && (crontab -l; echo "30 18 * * 5 SYSTEM BACKUP") | crontab -
}
