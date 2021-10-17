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


