# Backup Script

This script zips specified directories into a single zip file, excluding `.git` and `__pycache__` directories. It also logs the start and end times of the process, calculates the total duration, and reports the size of the zip file. The duration is reported in hours, minutes, seconds, and milliseconds.

## Features

- **Zip Multiple Directories**: Zips the specified directories into a single zip file.
- **Timestamped Zip File**: The zip file is named with a timestamp to avoid overwriting previous backups.
- **Exclude Specific Directories**: Excludes `.git` and `__pycache__` directories from the zip file.
- **Logging**: Logs the start and end times of the zipping process.
- **Duration Calculation**: Calculates the duration of the zipping process in hours, minutes, seconds, and milliseconds.
- **File Size Reporting**: Reports the size of the zip file in megabytes.
- **User Prompt**: Pauses at the end of the script to allow the user to view the results.

## Usage

1. **Modify Directories**: Update the `directories` array in the script to include the directories you want to zip.
2. **Run the Script**: Execute the script in your terminal.

```bash
chmod +x zipper.sh
./zipper.sh

