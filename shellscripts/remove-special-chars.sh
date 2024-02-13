#!/bin/bash

# Specify the directory to process
# Replace "/path/to/your/directory" with your actual directory path
DIR="."

# Change to the directory
cd "$DIR"

# Loop over all files in the directory
for oldname in *
do
    # Use sed to remove special characters and generate the new name
    newname=$(echo $oldname | sed -e 's/[^A-Za-z0-9._ -]//g')

    # If the old name is different from the new name, rename the file
    if [ "$oldname" != "$newname" ]
    then
        mv "$oldname" "$newname"
    fi
done
