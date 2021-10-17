#! /usr/bin/bash
echo "Hello world"
# Variables: Variables are defined by simply assigning value using '=' operator. Variables start with either a letter or  _(underscore). If it has to include spaces it must be enclosed in double quotes.
$myvar="Hello World! Myself Rachana"
echo $myvar
# There are three types of variables:
# 1.Environment Variables: Variables visible to child process of shell program. Eg: $PATH, $HOME,etc
# 2.Pre-defined Variables: Variables that are pre-defined.
# 3.User-defined Variables: Variables defined by the users.

#Shell-scripts are interepted not compiled.

echo $BASH #System variable
name="Rachana"
echo $name #user-defined variable

#Taking input from user
echo "Enter Name"
read oname
echo "Name: $oname"
#Here, the cursor will move in the next line and then user will input the name. In order to take the input in the same liine use the following:
read -p "Enter Name:" uname
echo "Name: $uname"
# -p flag is used with read command to take the input in the same line
# -s flag is used to enter the text without the visibility of the text on the screen
read -sp "password:" pass_wrd #whatever text user's enter is not visible on screen, but input is being taken.
echo