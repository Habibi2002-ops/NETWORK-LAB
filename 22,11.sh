#!/bin/bash

echo "Enter the filename to reset permissions:"
read filename
chmod 644 "$filename"
echo "Permission reset to default: rw-r--r--"
