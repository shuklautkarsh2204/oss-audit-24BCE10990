#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Utkarsh Shukla
# Unit Coverage: 5 (User Interaction & File Input and Output)

echo "--- Open Source Manifesto Generator ---"
echo "Answer these 3 questions to build your personal philosophy statement."
echo

# reading input using 'read'
read -p "1. What is your favorite Open Source language or tool?: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " ETHOS
read -p "3. What is one project you dream of building and sharing with everyone? " PROJECT

DATE=$(date +'%Y-%m-%d')
FILENAME="manifesto_$(whoami).txt"

{
    echo "=========================================="
    echo "      MY OPEN SOURCE MANIFESTO            "
    echo "=========================================="
    echo "Date: $DATE"
    echo "Author: Utkarsh Shukla"
    echo ""
    echo "In the world of technology, I believe $ETHOS is the most"
    echo "important value. As a developer, I rely on $TOOL every day"
    echo "to learn and grow."
    echo ""
    echo "My goal is to contribute to the community by building"
    echo "a $PROJECT and sharing it freely with the world."
    echo "=========================================="
} > "$FILENAME"

echo ""
echo "Done! Your manifesto has been saved to $FILENAME."
echo "Here is your generated statement:"
echo "------------------------------------------"
cat "$FILENAME"
