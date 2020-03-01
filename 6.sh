#!/bin/sh
echo $#
if [ $# != 2 ]
then
echo "Less no of arguments"
    exit 0
fi
if [ ! -f $1 ]
then
echo "File doesnot exist"
else
echo "File exist"
fi
mv $1 $2
echo $?
if [ $? -eq 0 ]
then
echo "Successfully done"
else
echo "Not successfull"
fi
