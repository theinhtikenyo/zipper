#!/bin/bash

# Define the directories you want to include in the zip
directories=("folder_1" "folder_2" "folder_3")

# Get the current date and time with milliseconds in the format YYYYMMDD_HHMMSS_SSS
timestamp=$(date +"%Y%m%d_%H%M%S_%3N")

# Define the name of the zip file
zip_filename="backup_${timestamp}.zip"

# Record the start time
start_time=$(date +"%Y-%m-%d %H:%M:%S")
start_seconds=$(date +%s%N)

echo "Zipping process started at: $start_time"

# Remove the existing zip file if it exists
if [ -f "$zip_filename" ]; then
    rm "$zip_filename"
fi

# Create the zip file excluding .git and __pycache__ directories
zip -r "$zip_filename" "${directories[@]}" -x "*/.git/*" "*/__pycache__/*"

# Record the end time
end_time=$(date +"%Y-%m-%d %H:%M:%S")
end_seconds=$(date +%s%N)

# Calculate the duration in milliseconds
duration_ms=$(( (end_seconds - start_seconds) / 1000000 ))

# Convert the duration to hours, minutes, seconds, and milliseconds
duration_s=$(( duration_ms / 1000 ))
hours=$(( duration_s / 3600 ))
minutes=$(( (duration_s % 3600) / 60 ))
seconds=$(( duration_s % 60 ))
milliseconds=$(( duration_ms % 1000 ))

# Get the size of the zip file in megabytes
zip_size_mb=$(du -m "$zip_filename" | cut -f1)

# Print the start time, end time, duration, and zip file size
echo "Zipping process completed at: $end_time"
echo "Total duration: ${hours} hours ${minutes} minutes ${seconds} seconds ${milliseconds} milliseconds"
echo "Zipped file size: ${zip_size_mb} MB"
echo "Folders zipped into $zip_filename, excluding .git and __pycache__ folders."

# Pause to allow the user to see the final result
read -p "Press [Enter] key to continue..."

