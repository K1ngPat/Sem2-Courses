#! usr/bin/env bash
file=`cat $1`
i=0
for word in $(cat $1)
do
if [ $((i%2)) -eq 0 ]
then
roll=$word
else
mv ${roll}.pdf ${roll}_${word}.pdf
fi
i=$((i+1))

done
