#!/bin/bash
echo "enter the filename:"
read filename
echo "enter the word to search(case-insensitive):"
read word
grep -i "$word" "$filename"

