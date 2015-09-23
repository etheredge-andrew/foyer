#!/bin/bash
# Author : Andrew Etheredge
# Date : 15-09-23
# Summary : A filter for top based on process names.
#
# Description : This will take multiple different process names which are used as the argurments, and then grab the PID and pass it through to top in order to only see certain pid's based on process name. 


# Loop through the script arguments that would be the process names that are being searched
for i in "$@"; do
	# Get PID for each argument that is given to this script
	getIds=`ps aux |grep $i | grep -v grep | grep -v topView | awk '{ print $2 }'`
	# Combine intial idLists with the new lists from the 2nd or 3rd or so on arguments
	idList="$idList $getIds"
done

# Clean the idList and replace the spaces with commas so top can use it in the command
cleanIdList=`echo $idList | tr ' ' ','`

# Run the top command with the PID option and the list of all the arguments supplied, it's sped up mainly because I like it a bit quicker :)
top -d .75 -p $cleanIdList
