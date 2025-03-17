#!/bin/bash
echo "Enter the filename to grant full permission:"
read filename
chmod 777 "$filename"
echo "Full permission (rwxrwxrwx) granted to everyone for $filename."
