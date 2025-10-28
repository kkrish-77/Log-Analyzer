#!/bin/bash

LOG_FILE="/var/log/nginx/access.log"

echo "Analyzing log file: $LOG_FILE"

echo "Number of 404 errors:"  # For 404 errors
grep "404" $LOG_FILE | wc -l

echo "Top 5 requested pages:" # For most requested pages
awk '{print $7}' $LOG_FILE | sort | uniq -c | sort -nr | head -5

echo "Top 5 IP addresses:" # For IPs with most requests
awk '{print $1}' $LOG_FILE | sort | uniq -c | sort -nr | head -5
