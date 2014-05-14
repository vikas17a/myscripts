#Script to identity the number is multiple of 5 or not

response=6;
result=`expr $response \% 5`;
while [ "$result" -ne 0 ]
do
        echo "Enter the number to check its divisibilty";
	read response;
	reg='[a-zA-Z]';
	if echo "$response" | egrep -q $reg
	then
		response=6;
		echo "Enter a valid number";
	else
		result=`expr $response \% 5`;
	fi
done
echo "You entered number $response multiple of 5";
	
