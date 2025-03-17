#!/bin/bash
echo "Enter the filename to remove execute permissions:"
read filename
chmod -x "filename"
echo "Execute permission removed from $filename."
