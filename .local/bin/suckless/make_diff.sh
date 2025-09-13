#!/bin/bash

# Define the directory to store diff files
DIR_NAME="diffs"

# Get the commit message and hash for the last commit
LOG_MESSAGE=$(git log --format="%h %s" -n 1)
COMMIT_HASH=$(git log --format="%H" -n 1)

# Create a storage directory if it doesn't exist
if [ ! -d "$DIR_NAME" ]; then
  mkdir "$DIR_NAME"
  echo "Storage '$DIR_NAME' directory created."
fi

# Store the diff of the last commit in a file
git diff HEAD~1 HEAD > "$DIR_NAME/$COMMIT_HASH.diff"

# Append the commit log message to a log file
echo "$LOG_MESSAGE" >> "$DIR_NAME/diffs.log"
