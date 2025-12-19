#!/bin/bash

# List all files
ls -al

# Show git status
git status

# Prompt user for the file or directory to upload
read -p "What directory or file do you want to upload? " directory_file

# Add the file/directory to git
git add "$directory_file"

# Commit with a message
git commit -m "Added $directory_file."

# Push to the 'main' branch of the 'docker' remote
git push docker main

