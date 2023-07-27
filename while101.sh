#!/usr/bin/bash

counter=5

while [ $counter -ge 1 ];
do
	echo "count : $counter"
	((counter--))

done
