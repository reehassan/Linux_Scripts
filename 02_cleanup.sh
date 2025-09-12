#!/bin/bash

# script to cleanup old files 

DIR="/home/reeb/temp"

echo "Cleaning files more then 7 days old in $DIR .."

echo "FIles to be deleted are: "
find $DIR -type f -mtime +7 -print

find $DIR -type f -mtime +7 -exec rm {} \;

echo "CleanUp Complete"