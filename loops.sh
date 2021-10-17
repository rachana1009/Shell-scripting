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