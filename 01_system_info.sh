#!/bin/bash

# script which shows basic system information

echo "Hostname: $(hostname)"

echo "OS Version"
cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2

echo "Kernal Version: $(uname -r)"

echo "System Uptime: $(uptime -p)"

echo "Logged In Users"
who