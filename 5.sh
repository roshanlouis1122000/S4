#!/bin/sh
echo $1
if [ -f $1 ]
then
echo "File exists"
exit 0
else
echo "File doesnot exists"
fi
