#!/bin/sh
echo "Script name $0"
echo $# arguments
if [ $# != 3 ] ;
then echo "Illegal number of arguments"
exit 0
else
echo "Three parameters"
fi
