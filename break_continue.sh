#!/usr/bin/bash

#break is used to get out of the loop
for (( i=1; i<6; i++))
do
if [ $i = 3 ]
then 
break 
fi
echo "$i"
done