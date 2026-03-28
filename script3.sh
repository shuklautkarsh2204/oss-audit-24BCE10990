#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Utkarsh Shukla
# Course: Open Source Software

# List of important system directories to audit [cite: 152]
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=========================================="
echo "      Directory Audit Report              "
echo "=========================================="

# For loop to iterate through each directory [cite: 154]
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Using ls -ld and awk to extract permissions, owner, and group [cite: 157]
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Using du -sh to get a human-readable size [cite: 157]
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "Directory  : $DIR"
        echo "Permissions: $PERMS"
        echo "Size       : $SIZE"
        echo "------------------------------------------"
    else
        echo "Warning: $DIR does not exist on this system." [cite: 161]
    fi
done

# TODO: Check Python config directory permissions [cite: 162]
echo "Checking Python Config Directory..."
PYTHON_DIR="/usr/lib/python3"
if [ -d "$PYTHON_DIR" ]; then
    ls -ld "$PYTHON_DIR"
else
    echo "Python config directory not found in standard location."
fi
