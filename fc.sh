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

for d in $Dir
do

cd $dr/$d

arry=(`ls -p | grep -v / `)
len=${#arry[*]}
i=0
while [ $i -lt $len ]; do

if [ -f ${arry[$i]} ]; then
let summ++
fi

let i++
done

done
echo $summ
