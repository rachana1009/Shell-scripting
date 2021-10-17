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



echo "continue statement"
# continue is used to skip that iteration of the loop
for (( j=1; j<6; j++))
do
if [ $j = 3 ]
then 
continue 
fi
echo "$j"
done