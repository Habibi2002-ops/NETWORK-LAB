#!/bin/bash

echo "Enter the Filename to makle executable:"
read filename
chmod +x "$filename"
echo "Execute permission granted for $filename"
