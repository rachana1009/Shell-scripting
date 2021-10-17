#!/usr/bin/bash

# loops

# 1. while loop
# Syntax:
# while [ condition ]
# do
#   commands
# done

# Example:
n=1
while [ "$n" -le 10 ]
do
echo "$n"
n=$(( n+1 ))
done

echo "After using Sleep command"
#using sleep and open command with while loop
n=1
while [ "$n" -le 5 ]
do
sleep 1
echo "$n"
n=$(( n+1 ))
done

#Read content in Bash

while read p
do 
echo $p
done <basics.sh

# second way to read
cat basics.sh | while read p 
do
echo $p
done




######### UNTIL LOOP ########
# Syntax:
# until [ condition ]
# do
# commands
# done

echo "Until loop"

read -p "Enter a number:" num
until [ $num -le 10 ]
do
echo "$num is greater than 10"
num=$(( num-1 ))
done


####### FOR LOOP ########
# Syntax 
# 1.
# for variable in {1,2,....}
# do
# Conditions
# done

# 2.
# for variable in file1 file2..
# do
# commands
# done

# 3.
# for OUTPUT in $(linux-or-unix-command-here)
# do
# command1 on $OUTPUT
# command2 on $OUTPUT 
# done 

# 4.
# for (( exp1; exp2; exp3))
# do
# commands
# done

echo "FOR LOOP"
# example 
for command in ls pwd date
do
echo "------- $command ---------"
$command
done

# 2. 
for (( i=0; i<=5 ; i++))
do
echo $i
done