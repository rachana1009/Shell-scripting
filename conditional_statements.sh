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
        echo "You can vote and drive with license."
elif [ $uage -ge 16 ] && [ $uage -le 18 ]
then
        echo "You cannot vote but drive with learning license."
else
        echo "You are under age. You cannot drive or vote."
fi

# File realted examples for conditional statements
echo -e "Enter name of the file : \c "  # \c is used to stay in the same line. -e is used to make use of the \c.
read file_name
if [ -e $file_name ]  #-e flag is used to checck if the file exist or not
then
        echo " $file_name found "
else
        echo " $file_name does not exist "
fi

#-f flag is used to check if file exist and if it is a regular file or not
#-d flag is used for directory
#-b flag is used to check if it is block special file
#-c flag is used if it is character special file
#-s flag is usd to check if the file is empty


echo -e "Enter name of the file : \c "  # \c is used to stay in the same line. -e is used to make use of the \c.
read file_namee
if [ -f $file_namee ]   #-e flag is used to checck if the file exist or not
then
        echo "It is a regular file"
else
        echo "It is not a regular file"
fi

echo -e "Enter any directory: \c"
read direc
if [ -d $direc ]
then
        echo "It is a directory"
elif [ -f $direc ]
then
        echo "It is not a directory, it is a file"
else
        echo "It is neither a directory nor a file"
fi


echo -e "Enter the name of the file: \c "
read fname
if [ -s $fname ]
then
        echo "File is empty "
else
        echo "File is not empty"
fi