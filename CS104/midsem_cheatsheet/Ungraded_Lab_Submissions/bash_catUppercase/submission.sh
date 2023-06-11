#! /esr/bin/env bash
value=`cat $1`
echo $value | tr '[a-z]' '[A-Z]'
