#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Usuage: ./bashrc.sh <command>"
else
	echo "$1" >> /home/`whoami`/.bashrc
	echo "Done!"
fi
