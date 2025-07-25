#!/bin/bash

SCRIPT_PATH="/Users/mac/Documents/bash-scripting-challenge/day10_bonus.sh"
TMP_CRON="/tmp/cron_backup"

#Add job
crontab -l > $TMP_CRON
echo "* * * * * $SCRIPT_PATH" >> $TMP_CRON 2>&1
crontab $TMP_CRON
echo "Cronjob added"

#Wait 1 minute and remove the cronjob
sleep 60
crontab -l | grep -v $SCRIPT_PATH > $TMP_CRON
crontab $TMP_CRON
echo "Cronjob clean up done"

# Clean up
rm "$TMP_CRON"