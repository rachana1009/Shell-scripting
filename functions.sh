#!/usr/bin/bash

# Syntax:
# 1. 
# function name_of_func ()
# {
#     commands
# }

# 2.
# name_of_func()
# {
#     commands
# }

function hello()
{
    echo "Hello world"
}

quit()
{
    exit
}

hello

## passing arguments to the function
function print ()
{
    echo $1 $2
}
print am Rachana


# by default script variables are local variables

function lprint()
{
    local name=$1 
    echo "Name is $name"
}
lprint Rachana
#local variable value doesnot change global variable value of the same name

#ternary operator
fname=basics.sh
[[ -f "$fname" ]] && return 0 || return 1
# if file exist 1 then || return 1 (return 0 not used)
# if file does not exist 0 then return 0 || return 1
#  $# gives the number of arguments


#readonly variable are used only to read the data not to make changes
var=12
readonly var
echo "var=$var"
var=21  #will give an error because readonly variable value cannot be changed
echo "var=$var"  #print 12 that is the previous value



#readonly function

whello()
{
    echo "Good Bye All"
}

readonly -f whello  # this will make a function as readonly function
whello

whello()
{
    echo "Welcome"  # will give error
}

whello

readonly  # will give all readonly variables  
readonly -f  #will give all readonly functions
 


