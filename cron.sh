#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Usuage: ./cron.sh <command>"
else
	echo "$1" > .tmp
	path="`pwd`/.tmp"
	crontab -l > mycron
	echo "* * * * * $path" >> mycron
	crontab mycron
	rm mycron
	chmod +x ./.tmp
	echo "Done!"
fi
