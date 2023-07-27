#!/bin/bash

counter=5

while [ $counter -ge 1 ];
do
	echo "count : $counter"
	((counter--))


done
num=1

while [ $num -le 3 ];
do
	echo "num : $num"
	((num++))

done