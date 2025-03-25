#!/bin/bash
echo "enter the filename:"
read filename
echo "enter the word to search:"
rtead word
grep -n "$word" "$filename"
