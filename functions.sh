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
