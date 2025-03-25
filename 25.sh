#!/bin/bash

echo "Menu:"
echo "1. Search for a movie name in a file"
echo "2. Count occurrences of a movie name"
echo "3. Find movies starting or ending with a specific word"
echo "4. Display only the first match"
echo "5. Count total movies (words) in the file"
echo "6. Replace a movie name in the file"
echo

read -p "Enter your choice: " choice

case $choice in
    1)
        echo "Enter the word to search:"
        read word
        echo "Enter the filename:"
        read filename
        grep "$word" "$filename"
        ;;
    2)
        echo "Enter the word to count:"
        read word
        echo "Enter the filename:"
        read filename
        grep -o "$word" "$filename" | wc -l
        ;;
    3)
        echo "Enter the word to search at the beginning of a line:"
        read word
        echo "Enter the filename:"
        read filename
        echo "Movies starting with '$word':"
        grep "^$word" "$filename"
        echo "Movies ending with '$word':"
        grep "$word$" "$filename"
        ;;
    4)
        echo "Enter the filename:"
        read filename
        echo "Enter the word to search:"
        read word
        grep -m 1 "$word" "$filename"
        ;;
    5)
        echo "Enter the filename:"
        read filename
        wc -w < "$filename"
        ;;
    6)
        echo "Enter the filename:"
        read filename
        echo "Enter the word to replace:"
        read oldword
        echo "Enter the new word:"
        read newword
        sed -i "s/$oldword/$newword/g" "$filename"
        ;;
    *)
        echo "Invalid choice, please enter a number between 1 and 6."
        ;;
esac

