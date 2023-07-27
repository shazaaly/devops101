#!/bin/bash

# 1- read line and skip first line of headers
while IFS= read -r line
do
	if [ "$line" == "Name,Age,Department,Salary" ]
	then
		continue
	fi

# 2- put department and salary fields in 2 variables
	department=$(echo "$line" | cut -d ',' -f 3)
	salary=$(echo "$line" | cut -d ',' -f 4)

# 3- if dep = finance sum the salaries

	if [ "$department" = "Finance" ];then
		total_salary=$((total_salary + salary))

	fi

done < data.txt

echo "Total salary : $total_salary"

