#!/bin/bash

PORTS="21,22,23,137,138,139,445,548,1900,3283,3659,4488,5800,5900,5988"

function checkPort()
{
	gtimeout 2 nc -vz localhost $1	
	
	[ $? -ne 0 ] && return 0 || return 1
}

function checkPorts()
{
	rc=0
	echo $1 | tr ',' '\n' | while read port; do
	
		echo "### Checking port $port ###"
		checkPort $port
		[ $? -eq 1 ] && echo "Error! " && return 1
		
		echo -e "### Check result: $rc ###\n\n"
		
	done
}

checkPorts $PORTS

echo "Tests completed successfully!"
