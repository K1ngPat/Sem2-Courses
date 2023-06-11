#!/bin/bash

X=5

function f1 {
	echo "f1: before local X, X is $X"
	local X=abc
	echo "f1: after local X, X is $X"

	echo "First arg is $1, Second arg is $2, Num args is $#"
	i=1
	for a in $*
	do
		echo "arg num $i is $a"
		let i=i+1
	done
}

echo "Before calling f1, X is $X"
f1 x y z
echo "After calling f1, X is $X"
