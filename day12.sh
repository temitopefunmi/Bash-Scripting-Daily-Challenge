#!/bin/bash

SOURCE_DIR=$HOME/Documents/bash-scripting-challenge
BACKUP_DIR=$HOME/Documents/backup-dir
DATE=$(date +%Y-%m-%d_%H-%M)
ARCHIVE_NAME="bash-challenge-$DATE.tar.gz"

# Create backup directory if it doe not exist, do nothing if it exists.
mkdir -p "$BACKUP_DIR"

# Create compressed archive
tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" "$SOURCE_DIR"

# Or zip only shell scripts
# zip "$BACKUP_DIR/$ARCHIVE_NAME" $SOURCE_DIR/*.sh

echo "Backup complete: $BACKUP_DIR/$ARCHIVE_NAME"
