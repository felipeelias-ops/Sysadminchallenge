#!/bin/bash  

filename=$1
n=1
#read each line of file
while read line;
do
#access ssh and get info from servers
value2=$(ssh -T myuser@$line "uname -s -r -v && hostname -I | awk '{print $1}")
n=$((n+1))
#write info to new document
echo "date $(date +'%d/%m/%Y %H:%M:%S:%3N') $line $value2">> servers_versions.txt
done < $filename
