#! /bin/bash -x
echo "Enter 3 value " 
read a b c

result1=$(($a+$b*$c))
result2=$(($a*$b+$c))
result3=$(($c+$a/$b))
