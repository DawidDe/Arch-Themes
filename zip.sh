#!/bin/bash

# Loop over all directories in the current directory (root)
for dir in */ ; do
    # Remove trailing slash
    dirname="${dir%/}"

    # Skip if it's not a directory
    [ -d "$dirname" ] || continue

    # Create zip of the folder's content and save it inside the folder
    zip -r "$dirname/theme.zip" "$dirname"/* >/dev/null
    echo "Zipped $dirname"
done