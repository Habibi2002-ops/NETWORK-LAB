#!/bin/bash
echo "enter the filename:"
read filename
grep -c "^$" "$filename"
