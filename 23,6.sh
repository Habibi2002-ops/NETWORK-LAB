#!/bin/bash

echo "Enter the word to highlight:"
read word
echo "Enter the filename:"
read filename
grep --color=auto "$word" "$filename"
