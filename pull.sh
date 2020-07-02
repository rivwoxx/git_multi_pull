#!/bin/bash

stٍ=$SECONDS
for i in $(find . -name ".git" -type d | cut -c 3- ); do
	echo -e $i;
	cd $i;
	cd ..;
	git pull;
done

dur=$(( SECONDS - start))
clear
echo "YAY!"
