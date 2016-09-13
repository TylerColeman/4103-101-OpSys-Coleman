#!/bin/bash
sum=0
x=0
z=$#
for y in $@
do
	let sum+=$y
	echo -n $y
	let x+=1
	if [ $x -lt $z ]
	then
		echo -n " "+" "
	else
		echo -n " "=" " 
	fi
done
echo $sum