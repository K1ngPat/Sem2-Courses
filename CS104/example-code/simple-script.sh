#!/bin/bash

mkdir demo
cd demo
mkdir code
mkdir doc
cd code
cp ../../hello.c ./
gcc -o hello hello.c
./hello
