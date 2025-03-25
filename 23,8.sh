#!/bin/bash
echo "enter the filename:"
read filename
echo "enter the word to exclude:"
read word
grep -v "$word" "$filename"

