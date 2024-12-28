#!/bin/bash

# Convert Windows path to WSL path if needed
if [[ -z "$1" ]]; then
    search_path="."
else
    search_path=$(wslpath "$1")
fi

# Find and delete Zone.Identifier files
find "$search_path" -name "*:Zone.Identifier" -type f -print -delete

echo "Finished removing Zone.Identifier files"