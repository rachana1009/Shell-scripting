#!/usr/bin/bash
#Array- array is the collection of the same data type.
echo "Enter names"
read -a names  #-a flag is used to take an array input
echo "Names: ${names[0]} , ${names[1]} "  # first two names printed

echo "Enter name:"
read  #note:we haven't used any variable here to take the input
echo "Name: $REPLY"  #REPLY is inbuilt variable used as default variable

echo $0 # $0 will give the script name

os=('ubuntu' 'windows' 'mac' 'unix')
echo "${os[@]}" # print all the os
echo "${os[1]}" # print windows
echo "${#os[@]}" # print the length of array os (@)

os[3]='Kali' # third replaced by kali
os[9]='linux'

unset os[2]  # os at index 2 is removed
echo "${os[@]}"