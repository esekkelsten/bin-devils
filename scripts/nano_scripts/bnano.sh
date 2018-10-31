#!/bin/bash

if [ $# -ne 1 ];
then
	echo "Usage: bnano <filename>"
	echo "Bye."
	exit 1
fi

filename=$1

if [ ! -f $filename ];
then
	echo "#!/bin/bash" >> $filename
fi
	
chmod +x $filename
nano $filename
