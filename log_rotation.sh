#!/bin/bash

# Configuration
log_directory="/path" #Needs to be changed to the destination of original log
log_file="your_log_file.log"
max_archives=1000  # The number of archived log files to keep

# Instructs to rotate logs
rotate_logs() {
    # Check if it exists
    if [-f "$log_directory/$log_file"]; then

        # Makes a new archive file with timestamps
        timestamp=$(date +'%Y %m% d% H% M% S')
        mv "$log_directory/$log_file" "$log_directory/$log_file.$timestamp"

        # Removes older archives when the macimum limit is reached
        archives_count=$(ls -1 "$log_directory/$log_file".* 2>/dev/null | wc -l)
        if [ "$archives_count" -gt "$max_archives" ]; then
            oldest_archive=$(ls -1t "$log_directory/$log_file".* | tail -n 1)
            rm "$oldest_archive"
        fi
    fi
}

# Instructs to rotate the log files
rotate_logs