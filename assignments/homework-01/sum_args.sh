#!/bin/bash
sum=0
x=0
z=$#

#loops and stores each argument in y
for y in $@
do
	let sum+=$y
	echo -n $y
	let x+=1
	#formatting purposes:
	if [ $x -lt $z ]
	then
		echo -n " "+" "
	else
		echo -n " "=" " 
	fi
done
#print the sum
echo $sum