#This script should recursively traverse through the directories and count every file

#!/bin/bash

[ $# -eq 1 ] && start=$1

if [ ! -d $start ]
then 
echo "$start not a directory"
exit 1
fi

summ=0
dr=`pwd`
Dir=$(find "$start" -type d)
echo $Dir

