#!/bin/usr/env bash

declare -a fruits=(
[0]=mango
[1]=banana
[2]=grapes
[3]=apple
)

echo -e "number of elements in array is ${#fruits[@]} \n"
for i in ${fruits[@]}
do
echo -e "$i \n"
done

fruits[4]="pineapple"
fruits[1]="guava"
fruits+=("jamun" "cherry")
echo "${fruits[@]}"


declare -a veg=("potato" "carrot" "onion")
echo "${veg[@]}"
unset veg[1]
echo "${veg[@]}"

