#!/bin/bash

var=10

function foo {
	echo "Inside foo: var is $var"
	local var=abc
	echo "Inside foo after local var, var is $var"
	echo "arg1 is $1, arg2 is $2, arg3 is $3 Num args is $#"
}
echo "Before calling foo, var is $var"
foo x y z
echo "After calling foo, var is $var"

#exporting a variable X, but not Y
echo
export X="hello"
Y=5

echo "X is $X, Y is $Y"

./var-demo-child.sh

