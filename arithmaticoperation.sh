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
              i=$(($i+1))
done

echo ${array[*]}

for((i=${#array[@]};i>0;i--))
do
for (( j=1;j<$i;j++ ))
do
      if [ ${array[$j-1]} -lt ${array[$j]} ]
        then
               temp=${array[$j-1]}
                  array[j-1]=${array[$j]}
                    array[j]=$temp
         else
                array[j-1]=${array[$j-1]}



        fi
done
done
echo "array in descending order" ${array[*]}

for((i=${#array[@]};i>0;i--))
do
for (( j=1;j<$i;j++ ))
do
      if [ ${array[$j-1]} -gt ${array[$j]} ]
        then
               temp=${array[$j-1]}
                  array[j-1]=${array[$j]}
                    array[j]=$temp
         else
                array[j-1]=${array[$j-1]}



        fi
done
done
echo "array in Ascending order" ${array[*]}

