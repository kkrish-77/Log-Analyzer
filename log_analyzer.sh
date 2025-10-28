#!/bin/bash

LOG_FILE="/var/log/nginx/access.log"

echo "Analyzing log file: $LOG_FILE"

echo "Number of 404 errors:"  # For 404 errors
grep "404" $LOG_FILE | wc -l
