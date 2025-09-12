#!/bin/bash

# Alert if disk usage exceeds 80% on any filesystem.

THRESHOLD=80

# Get usage percentages (remove % sign)
USAGES=$(df -h | grep '^/dev' | awk '{print $5}' | sed 's/%//')

for usage in $USAGES; do
    if [ "$usage" -gt "$THRESHOLD" ]; then
        echo "WARNING: Disk usage is at ${usage}%!"
    else
        echo "OK: Disk usage is at ${usage}%"
    fi
done