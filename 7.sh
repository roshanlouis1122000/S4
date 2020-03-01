#!/bin/sh

echo $#
if [ $# != 2 ]
then
echo "Less number of arguments"
exit 0
fi
if [ ! -f $1 ]
then
echo "File doesnot exist"
else
echo "File exist"
fi
if [ ! -f $2 ]
    then
cat $1>$2
else
cat $1>>$2
fi
if [ $? -eq 0 ]
then
echo "Successfull"
else
echo "Not successfull"
fi
