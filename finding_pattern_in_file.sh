#my third script to check if the given word present in file or not

printf "Enter the pattern to find : ";
read user_input;
if [ ! -z "$1" ]
then
	if [[ ! -f $1 ]]; then
		echo "File doesnot exist please retry with an existing file";	
	else
		result=$(grep "$user_input" "$1");
		if [ -z "$result" ]
		then
			echo "No match found with word $user_input in file $1";
		else
			echo "The word matched in document in following line";
			echo "$result"
		fi
	fi
else
	echo "File name is not entered";
fi
