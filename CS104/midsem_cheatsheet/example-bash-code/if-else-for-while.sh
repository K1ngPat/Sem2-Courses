#!/bin/bash

X=4

if [ $X -lt 7 ]; then
	echo "$X is less than 7"
fi

#exit 0

cd demo
for dir in code doc anotherdir
do
	if [ -d "$dir" ]; then
		echo "$dir already exists"
	else
		mkdir "$dir"
	fi
done
#exit 0

X=10

while [ $X -ge 0 ]
do
        let X=X-1
        echo $X
done
