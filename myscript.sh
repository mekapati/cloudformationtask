#!/bin/bash 
# using the BASH interpreter 
echo "the script $USER for learning in $PWD"
LOG="/var/log/auth.log"
echo "Reading $LOG..."
P="disconnected from authenticating user root"
echo "Top $1  attrackers: "
grep -i "$P" $LOG | cut -d: -f4  | cut -d" " -f7 | sort | uniq -c | sort -nr | head -$1
