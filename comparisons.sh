#!/usr/bin/bash

#Conditions used are:

######## Arithmetic Conditions ##########
#1. -eq : equal to
#2. -ne : not equal to
#3. -gt : greater than
#4. -ge : greater than or equal
#5. -lt : less than
#6. -le : less than or equal

#Note: Above are used when condition is in square brackets.
#example : [ 10 -ge 6 ]

# In order to use
#  < , > , = , <= , >=
# we need to use ((__)) instead of square brackets []
# example (( 10 >= 6 ))


######### String Comparisons ##########
# = or == : equal to # used as [ "$a" = "$b" ]
# != : not equal to
# < or > : compares ASCII values # used as [[ "$a" < "$b" ]]
# -z : To check if string is NULL that is have zero length



########### AND OR ###########
# 1. And : [ $age -gt 18 ] && [ $age -le 60 ]
#          [ $age -gt 18 -a $age -le 60 ]   # -a flag is used for and operation
#          [[ $age -gt 18 && $age -le 60 ]]

# 2. Or : Same as and except that '||' is symbol for or and -o is the flag.


# Arithmetic operations on numbers
echo 1+1 # will print 1+1

num1=20
num2=5
echo $(( num1 + num2 )) # print 25
#or
echo $(expr $num1 \* $num2) # \ is placed before * so that multiplied can be performed else * will be printed as it is.


#Arithmetic operations on floating point numbers

num_1=20.5
num_2=15.6

echo "$num_1+$num_2" |bc   # bc is used to perform operations on floating numbers
echo "scale=2; 20.824/3.6" |bc  # scale is used 
echo "scale=2; sqrt($num_1)" |bc -l # -l is used to call the math library
