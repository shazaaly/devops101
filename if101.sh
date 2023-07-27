!#/bin/bash

num=7
if ((num % 2 == 0))
then
	echo "num : $num is even"
else
	echo "num : $num is odd"

fi

file="sample.txt"
if [ -e "$file" ]
then
	echo "$file exists"
else
	echo "$file does't exist"
fi