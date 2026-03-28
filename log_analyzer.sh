#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh /var/log/bootstrap.log
# Author: Utkarsh Shukla

LOGFILE=$1
KEYWORD=${2:-"error"} # Default to 'error' if not provided [cite: 171]
COUNT=0

# Check if a file path was provided and if it exists [cite: 174]
if [ -z "$LOGFILE" ] || [ ! -f "$LOGFILE" ]; then
    echo "Error: Please provide a valid log file path."
    echo "Usage: $0 /path/to/logfile [keyword]"
    exit 1
fi

echo "Analyzing $LOGFILE for '$KEYWORD'..."

# While-read loop to process the file line by line [cite: 177, 178]
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times."
# Show the last 5 matching lines [cite: 184]
echo "------------------------------------------"
echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
