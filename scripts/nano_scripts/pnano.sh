#!/bin/bash

if [ $# -ne 1 ];
then
	echo "Usage: pnano <filename>"
	echo "Bye."
	exit 1
fi

filename=$1

if [ ! -f $filename ];
then
	echo "#!/usr/bin/python" >> $filename
	echo 			 >> $filename
fi
	
chmod +x $filename
nano $filename
