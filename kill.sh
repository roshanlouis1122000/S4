#!/bin/bash
read memlim
rm k.txt
ps aux --sort -%mem | awk '{ print $2,$4,$11 }' | sed -n '2,11'p > a.txt 
IFS=' '
while read -r a b c
do
        if [ 1 -eq ` echo "$b > $memlim" | bc ` ] 
	then echo "$a    $c" >> k.txt; kill $a
	fi
done < a.txt
#gedit k.txt&
