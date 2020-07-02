#!/bin/bash

for i in $(find . -name ".git" -type d | cut -c 3- ); do
	echo -e $i;
	cd $i;
	cd ..;
	git pull;
done

clear

echo "YAY!"
