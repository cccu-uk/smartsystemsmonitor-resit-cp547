#!/bin/bash

# Check if the correct number of arguments (2) is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <file_to_log> <log_file>"
    exit 1
fi

file_to_log="$1"
log_file="$2"

# Check if the file to log exists
if [ ! -f "$file_to_log" ]; then
    echo "Error: File '$file_to_log' does not exist."
    exit 1
fi

# Check if the log file exists, if not, create one
if [ ! -f "$log_file" ]; then
    touch "$log_file" || { echo "Error: Unable to create log file."; exit 1; }
fi

# Get the current timestamp
timestamp=$(date +"%Y-%m-%d %H:%M:%S")

# Append the file content to the log file with the timestamp
echo "Logging file: $file_to_log"
echo "Timestamp: $timestamp"
echo "====================" >> "$log_file"
cat "$file_to_log" >> "$log_file"
echo "====================" >> "$log_file"

echo "File logged successfully to: $log_file"
