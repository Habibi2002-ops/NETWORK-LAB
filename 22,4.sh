#!/bin/bash
echo "Enter the filename:"
read filename
chmod 660 "$filename"
echo "Read and write permissions granted to group for $filename."
