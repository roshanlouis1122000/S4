#!/bin/sh
if [ $# != 2 ]
then 
echo "Incorrect number of arguements passed"
exit 0
else
echo "TWO Parameters passed "
fi

if [ -f$1 ]
then
echo "The File $1 exists "
else
echo "The file does not exist"
fi

if grep -q "$2" $1
then
  echo " Name $2 present in the list "
else
  echo " Name $2 not present "
  echo $2>>$1
fi

