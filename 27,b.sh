#!/bin/bash

echo -n "Enter process name to count:"
read process
count=$( ps aux | grep -w "$process"| grep -v "grep" | wc - 1 )
echo "Number of running instance of "$process": $count"
