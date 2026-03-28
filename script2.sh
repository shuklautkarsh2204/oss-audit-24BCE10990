#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Utkarsh Shukla
# Course: Open Source Software
# Unit Coverage: 2

# The software package we chose to audit
PACKAGE="python3"

echo "=========================================="
echo "       FOSS Package Inspector             "
echo "=========================================="

# Check if the package is installed using dpkg 
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "STATUS: $PACKAGE is installed."
    
    # Extracting version and license information [cite: 139]
    VERSION=$(dpkg -s $PACKAGE | grep '^Version:' | awk '{print $2}')
    SUMMARY=$(dpkg -s $PACKAGE | grep '^Description:' | cut -d' ' -f2-)
    
    echo "Version : $VERSION"
    echo "Summary : $SUMMARY"
    echo "------------------------------------------"

    # Case statement to print a philosophy note 
    case $PACKAGE in
        python3)
            echo "Philosophy Note: Python's 'Zen of Python' emphasizes that readability counts."
            echo "It is a community-driven language built on transparency."
            ;;
        mysql*)
            echo "Philosophy Note: MySQL represents the dual-license model in open source."
            ;;
        *)
            echo "Philosophy Note: This tool is an essential pillar of the FOSS ecosystem."
            ;;
    esac
else
    # Logic if the package is missing [cite: 136]
    echo "ERROR: $PACKAGE is NOT installed on this system."
    echo "Please install it using 'sudo apt install $PACKAGE'."
fi
echo "=========================================="
