#!/bin/bash

TMP_CRON="/tmp/cron_backup"
CRON_JOB="30 2 * * 3 /Users/mac/Documents/bash-scripting-challenge/day12.sh"

# Check cron for existing identical cronjob and remove it
(crontab -l 2>/dev/null | grep -Fv "$CRON_JOB"; echo "$CRON_JOB") > $TMP_CRON
echo "cronjob added"

#Add cronjob
crontab $TMP_CRON

#remove temporary file
rm $TMP_CRON