#!/bin/bash

log_file="/tmp/cron_debug.log"

echo "Starting memory logging... " > $log_file
for i in {1..3}; do 
    echo "[$(date)]" >> $log_file
    free -h >> $log_file 2>/dev/null || vm_stat >> $log_file 
    echo "-------------------" >> $log_file
    sleep 5

done &

echo "Memory monitoring started in backgound. PID: $!"