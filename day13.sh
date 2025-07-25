#!/bin/bash

LOG_FILE="script.log"
LOG_ZIP="app_logs/log_backups/logs-$(date +%Y-%m-%d).zip"

exec > >(tee -a $LOG_FILE) 2>&1

trap 'echo -e "[$(date '+%Y-%m-%d_%H:%M:%S')] Error on line $LINENO: app_logs/ directory not found"; exit 1' ERR

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Archive process started"

zip -j "$LOG_ZIP" app_logs/*.log
##ls /non-existent
echo "Archive created: logs-$(date +%Y-%m-%d).zip"
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Operation done. Success..."