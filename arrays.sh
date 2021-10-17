#!/usr/bin/bash
#Array- array is the collection of the same data type.
echo "Enter names"
read -a names  #-a flag is used to take an array input
echo "Names: ${names[0]} , ${names[1]} "  # first two names printed

echo "Enter name:"
read  #note:we haven't used any variable here to take the input
echo "Name: $REPLY"  #REPLY is inbuilt variable used as default variable

echo $0 #$0 will give the script name