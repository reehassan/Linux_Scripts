#!/bin/bash
# Backup files from one directory to another with timestamp.

SOURCE_DIR=$1
DEST_DIR=$2

if [ -z "$SOURCE_DIR" ] || [ -z "$DEST_DIR" ]; then
    echo "Usage: $0 <source_directory> <destination_directory>"
    exit 1
fi

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Source directory does not exist: $SOURCE_DIR"
    exit 1
fi

# Create backup folder with timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_DIR="$DEST_DIR/backup_$TIMESTAMP"

mkdir -p "$BACKUP_DIR"

# Copy files
cp -r "$SOURCE_DIR"/* "$BACKUP_DIR"

echo "Backup completed! Files copied to: $BACKUP_DIR"
