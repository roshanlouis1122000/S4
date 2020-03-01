#!/bin/sh
if [ $# != 2 ]
then
echo "Less number of arguments"
exit 0
fi
if [ ! -f $1 ]
then
echo "file doesnot exist"
else
echo "file exist"
fi
if grep -q "$2" $1
then
echo "String is present"
else
echo "String not present"
fi
