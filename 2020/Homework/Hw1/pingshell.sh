#!/bin/bash
cat web.txt | while read output
do
	ping -c 1 "$output"
	if [ $? -eq 0 ]; then
		echo "$output is up"
	else
		echo "$output is down"
	fi
done

