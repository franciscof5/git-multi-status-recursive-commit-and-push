#!/bin/bash
while read -r line
do
    if [ -d "$line/.git" ]
	then
		echo -en "\033[0;35m"
		echo "### cd $line && git pull"
		cd $line
		git pull origin master
		echo -en "\033[0m"
	fi
done <<< $(find $PWD -maxdepth 5 -type d)