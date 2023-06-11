#!/bin/bash

echo 1 5*2+1 
num=5*2+1
echo 2 $num

#Two formats, $((expression)) and $[expression]
echo 3 $((5*2+1)) 
echo 4 $[5*2+1] 
let num=5*2+1
echo 5 $num
declare -i result
result=5*2+1
echo 6 $result

#echo $((5*2+1))
echo 7 $[3/4]
#$float_num=${3/4 | bc}
echo -n "8 "
echo "3/4" | bc -l




