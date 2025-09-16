#!/bin/bash
# Disk Space Monitor Script
# Alerts if disk usage exceeds 80% on any partition

# Set threshold (you can change 80 to any percentage)
THRESHOLD=80

# Loop through all partitions except header
df -h | awk 'NR>1 {print $5 " " $1}' | sed 's/%//g' | while read usage partition
do
    # Check if current partition usage is greater than threshold
    if [ "$usage" -gt "$THRESHOLD" ]; then
        # Print alert to screen
        echo "Warning: $partition usage is at ${usage}%"

        # Optional: Send email alert (requires configured mail service)
        # echo "Disk usage warning on $partition: $usage%" | mail -s "Disk Alert" admin@example.com
    fi
done
