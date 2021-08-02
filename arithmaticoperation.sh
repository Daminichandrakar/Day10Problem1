#! /bin/bash -x
echo "Enter 3 value " 
read a 
read b 
read c

result1=$(($a+$b*$c))
result2=$(($a*$b+$c))
result3=$(($c+$a/$b))
result4=$(($a%$b+$c))

 declare -A Dict
 Dict=( [result1]=$result1 [result2]=$result2 [result3]=$result3 [result4]=$result4 )

i=0
for key in ${!Dict[@]}
do
      array[$i]=${Dict[$key]}
done

