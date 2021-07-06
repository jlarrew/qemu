#!/bin/bash

nr_files=$#

#echo -n "Files:"

for file in $@; do
	[ ! -f ${file} ] && continue

	dir=$(dirname ${file})
	echo -n " ${file} ${dir#..}"

	let nr_files--

	if [ "${nr_files}" -gt 0 ]; then
		echo ","
	else
		echo
	fi
done
