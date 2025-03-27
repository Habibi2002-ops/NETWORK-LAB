#!/bin/bash

echo -n "Enter process name or pid (eg; firefox,chrome,bash.or,1234):"
read process

if [ -z "$process" ];then
    echo "No input provided, Exiting"
     exit 1
fi
ps aux | grep -w "$process" | grep -v "grep" || echo "NO such process found: $process" 
