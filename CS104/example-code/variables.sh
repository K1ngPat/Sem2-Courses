#!/bin/bash

#the difference between " and '
myVariable="Hello, world\!"

echo myVariable
echo $myVariable
echo "$myVariable"
echo '$myVariable'

#numbers are also strings
num1=1234
num2=7890
echo $num1$num2

#Handling spaces
var="abc	xyz"
num="123"
echo 1 $var$num
echo 2 "$varXX$num"
echo 3 "${var}XX${num}"
echo 4 '$varXX$num'

echo word1	word2
echo "word1	word2"


#enviornment variables
echo $HOME # Home Directory  
echo $PWD # current working directory  
echo $BASH # Bash shell name  
echo $BASH_VERSION # Bash shell Version  
echo $LOGNAME # Name of the Login User  
echo $OSTYPE # Type of OS  

echo "User $LOGNAME is working in folder $PWD using OS $OSTYPE"

#command substitution in variables
lsResult=$(ls)
directory=`pwd`  
echo "My files are:" $lsResult  in $directory


