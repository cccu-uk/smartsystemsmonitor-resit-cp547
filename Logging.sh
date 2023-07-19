#!/bin/bash

file_to_log="$1"
log_file="$2"

# Check if the file to log exists
if [ ! -f "$file_to_log" ]; 
    exit 1
fi

# Checks if the file exists, if it doesnt then it creates one
if [ ! -f "$log_file" ]; then
    touch "$log_file" 
fi

# Gets the current timestamp
timestamp=$(date +" %Y- %m- %d %H:%M:%S")

# Adds to the log with a timestamp
cat "$file_to_log" >> "$log_file"



