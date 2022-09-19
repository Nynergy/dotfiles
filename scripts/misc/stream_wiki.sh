#!/bin/bash

# Update the index.wiki file in this current directory if there is one

if [[ -f "index.wiki" ]]; then
    echo "Found Wiki Index"
    # TODO: Collect all stream notes
    # TODO: Truncate and reconstruct index.wiki
fi

# Create a wiki file in the current directory for today's date
# If such a file already exists, print and exit without truncating

DATE=`date "+%Y-%m-%d"`
FILENAME="$DATE.wiki"

if [[ -f "$FILENAME" ]]; then
    printf "File '$FILENAME' already exists!\n"
    exit
fi

touch "$FILENAME"
echo "= $DATE =" >> "$FILENAME"
echo "" >> "$FILENAME"
echo "== What are we doing today? ==" >> "$FILENAME"
echo "" >> "$FILENAME"
echo "TODO" >> "$FILENAME"
echo "" >> "$FILENAME"
echo "== References ==" >> "$FILENAME"
echo "" >> "$FILENAME"
echo "[1] TODO" >> "$FILENAME"
