#!/bin/sh
echo "Enter the first number"
read a
echo "Enter the second number"
read b
echo "\t\tMENU DRIVEN CALCULATOR"
echo " 1. Addition\n 2.Subtraction\n 3.Multiplication\n 4.Division\n 5.Modulus\n"
echo " Enter the choice "
read ch
case $ch in
1) result=`expr $a + $b `;;
2) result=`expr $a - $b `;;
3) result=`expr $a \* $b `;;
4) if [ $b -eq 0 ]
   then 
       echo "Division by 0 not possible"
       exit 0
   else
     result=`expr $a  / $b`
   fi ;;
5) result=`expr $a % $b `;;
*) echo "INVALID CHOICE"
   exit 0;;
esac
echo "RESULT : $result " 
