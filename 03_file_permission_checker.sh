#!/bin/bash

# Check if a file has read, write, and execute permissions for the owner.

FILE=$1

if [ -z "$FILE" ]; then
    echo " Usage: $0 <filename> "
    exit 1
fi

if [ ! -e "$FILE" ]; then
    echo "File does not exist: $FILE"
    exit 1
fi

echo "Checking permissions for: $FILE"

if [ -r "$FILE" ]; then
    echo "Owner has READ permission"
else
    echo "Owner does NOT have READ permission"
fi

if [ -w "$FILE" ]; then
    echo "Owner has WRITE permission"
else
    echo "Owner does NOT have WRITE permission"
fi

if [ -x "$FILE" ]; then
    echo "Owner has EXECUTE permission"
else
    echo "Owner does NOT have EXECUTE permission"
fi
