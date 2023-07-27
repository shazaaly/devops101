#!/bin/bash

count=7

until [ $count -gt 10 ]

do
	echo "count : $count"
	((count++))
done
