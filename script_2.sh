#!/bin/bash  

filename=$1
n=1
array=()

echo $len
while read line line2;
do
#check if the ip is not valid, fake ip
if [[ ! "$line" =~ ^(([1-9]?[0-9]|1[0-9][0-9]|2([0-4][0-9]|5[0-5]))\.){3}([1-9]?[0-9]|1[0-9][0-9]|2([0-4][0-9]|5[0-5]))$ ]]; then
     # if it's the first fake ip, simply insert it into the fake ips array
     if [ $n -eq 0 ]
     then
        array+=($line)
     else
        # if there are more fake ips make a comparison in the array of fake ips
        # checks in the array under construction if the fake ip is already registered
	if [[ " ${array[*]} " =~ " $line " ]]; then
    	    #remove the duplicate line
            sed -i "${n}d" $filename
            #remove the duplicate line
            n=$((n - 1)); 
        else
            #if it is the first appearance of a fake ip, insert it into the array
            array+=($line) 
        fi       
     fi
fi
# update the number of lines in the file
n=$((n + 1));
done < $filename


