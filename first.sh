#! /bin/bash
RESPONSE=4
while [ "$RESPONSE" -ne 3 ]
do
   echo "What you want to do ?";
   echo "(a) Press 1 for adding two numbers.";
   echo "(b) Press 2 for multiplying two numbers.";
   echo "(c) Press 3 for exit the program.";
   read RESPONSE;
   if ! echo $RESPONSE | egrep -q '^[0-9]+$';
   then
        RESPONSE=4;
        echo "Not a valid response please enter a valid input";
   elif [ "$RESPONSE" -eq 1 ]
   then
      echo "Enter the first number";
      echo "First Number : ";
      read first_num;
      while ! echo $first_num | egrep -q '^[0-9]+$'
      do
        echo "Number not valid enter again"
        read first_num;
      done
      echo "Second Number : ";
      read second_num;
      while ! echo $second_num | egrep -q '^[0-9]+$'
      do
        echo "Number not valid enter again"
        read second_num;
      done
      val=`expr $first_num + $second_num`
      echo "The output for your choice is $val";
   elif [ "$RESPONSE" -eq 2 ]
   then
      echo "Enter the first number";
      echo "First Number : ";
      read first_num;
      while ! echo $first_num | egrep -q '^[0-9]+$'
      do
        echo "Not a valid number enter again"
        read first_num;
      done
      echo "Second Number : ";
      read second_num;
      while ! echo $second_num | egrep -q '[0-9]+$'
      do
        echo "Not a valid number enter again"
        read second_num;
      done
      val=`expr $first_num \* $second_num`;
      echo "The output for your choice is $val";
   elif [ "$RESPONSE" -ne 3 ]
   then
      echo "Your choice is not valid please enter a valid choice";
   else
      echo "Exiting the program";
   fi
done
