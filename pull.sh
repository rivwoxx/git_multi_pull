#!/bin/bash

dir=$(pwd)

if [ $dir = $HOME/git ]; then
	for i in $(find . -name ".git" -type d | cut -c 3- ); do
		echo -e $i;
		cd $i;
		cd ..;
		git pull;
		echo "................"
		cd $dir
		
	done

	echo ".........."
	echo ""
	echo "YAY!"
else
	echo "You should be on $HOME/git" 
fi


