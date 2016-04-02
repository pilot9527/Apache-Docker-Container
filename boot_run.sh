#!/bin/bash 
CMD=${1:-"exit 0"}
if [[ "$CMD" == "-d" ]];
then
	service apache2 start
	/usr/sbin/sshd -D -d
else
/bin/bash -c "$*" 
fi
