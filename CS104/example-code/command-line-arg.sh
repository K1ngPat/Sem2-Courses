#!/bin/bash

# current shell script
echo command: "$0" 
 
# The syntax "$#" gives the number of command-line arguments.
echo number of command line args: "$#"
 
echo first:  "$1"
echo second: "$2"
echo third:  "$3"
 
# "$@" (and "$*") is used to represent 
# all the command line arguments as a single string
#sh command-line-arg.sh abc "de fg" hij
 
echo all: "$@"
echo all: "$*"


echo "Printing \$* "
for i in $*
do
        echo i is: $i
done

echo "Printing \$@ "
for i in "$@"
do
        echo i is: $i
done

#### Other special variables

ls "hello.c"
res=$?
echo "ls hello.c exited with $res"

ls "non-existent-file"
res=$?
echo "ls non-existent-file exited with $res"

echo "My process id is $$"
echo "My parent process id is $PPID"

