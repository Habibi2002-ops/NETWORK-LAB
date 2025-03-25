echo "menu"
echo "1. Search for a movie name in a file"
echo "2. Count occurrences of a movie name"
echo "3. Find movies starting or ending with a specific word"
echo "4. Display only the first match"
echo "5. Count total movies (words) in the file"
echo "6. Replace a movie name in the files"
echo 
read -p "Enter your choice: " choice

case $choice in
	1)
		echo "enter the word to search:"

		read word 

		echo "enter the filename:"

		read filename 

		grep "$word" "$filename"
		; ;

	2) 
	 	echo "enter the word to count:"

		read word

		echo "enter the filename:"

		read filename 
		grep -o "$word" "$filename" | wc -l
		; ;
	3)
	 	echo "enter the word to search at the beginning of a line :"

		read word 

		echo "enter the filename:"

		read filename 
		grep "^$word" "$filename" | "$word$" "$filename"
		; ;
 
	 4)

	 	echo "enter the filename:"

		read filename

		echo "enter the word to search:"

		read word

		grep -m 1 "$word" "$filename"
		; ;

	 5)
	 	echo "enter the filaname:"

		read filename

		wc -w < "$filename"
		; ;
	 
	 6) 
	 	echo "enter the filename:"

		read filename

		echo "enter the word to replace:"

		read oldword

		echo "enter the new word:"
		
		read newword

		sed -i "s/$oldword/$newword/g" "$filename"
		
		; ;
		
		esac

