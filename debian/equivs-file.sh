#!/bin/bash

#echo -n "Files:"

for file in $@; do
	[ ! -f ${file} ] && continue

	dir=$(dirname ${file})
	echo " ${file} ${dir#..}"
done
