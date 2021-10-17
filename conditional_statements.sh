#!/usr/bin/bash
#There are three types of Conditional statements

#1. If-statement
#Synatx:
# if [ condition ]
# then
# statements
# fi   #fi marks the end

#Example:
count=10
if [ $count -ge 9 ]
then
        echo " Condition is true"
fi

count=20
if (( $count < 21))
then
        echo "$count is less than 21. Condition is true"
fi


#2. If-else
#Syntax:
#if [ condition ]
#then
#  statements
#else
#  statements
#fi

#Example:
read -p "Enter your age:" age
if [ $age -ge 18 ]
then
        echo "You can vote in the elections"
else
        echo "You are under 18 hence cannot vote"
fi



#3. If-else-if ladder
#Syntax:
#if [ condition ]
#then
#  statements
#elif [ condition ]
#then
#  statements
#else
#  statements
#fi

#Example:
read -p "Enter your age:" uage
if [ $uage -ge 18 ]
then
        echo "You can vote and drive with lecense."
elif [ $uage -ge 16 ] && [ $uage -le 18 ]
then
        echo "You cannot vote but drive with learning license."
else
        echo "You are under age. You cannot drive or vote."
fi