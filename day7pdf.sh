echo "1Q. Write a program in the following steps
a. Generates 10 Random 3 Digit number.
b. Store this random numbers into a array.
c. Then find the 2nd largest and the 2nd smallest element without sorting the array....?"
echo ""

echo "Display the random elements of array :"
array=($(($RANDOM%999+100)) $(($RANDOM%999+100)) $(($RANDOM%999+100)) $(($RANDOM%999+100)) $(($RANDOM%999+100)))
echo "${array[*]}"
if [ "${#array[@]}" -lt 2 ]
then
  echo Incoming array is not large enough >&2
  exit 1
fi

largest=${array[0]}

secondGreatest='unset'

for((i=1; i < ${#array[@]}; i++))
do
  if [[ ${array[i]} > $largest ]] 
  then
    secondGreatest=$largest
    largest=${array[i]}
  elif (( ${array[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${array[i]} > $secondGreatest ]]; }
  then
    secondGreatest=${array[i]}
  fi
done

echo "secondGreatest = $secondGreatest"

Smallest=${array[0]}

secondSmallest='unset'

for((i=1; i < ${#array[@]}; i++))
do
  if [[ ${array[i]} < $Smallest ]] 
  then
    secondSmallest=$Smallest
   Smallest=${array[i]}
  elif (( ${array[i]} != $Smallest )) && { [[ "$secondSmallest" = "unset" ]] || [[ ${array[i]} < $secondSmallest ]]; }
  then
    secondSmallest=${array[i]}
  fi
done

echo "secondSmallest = $secondSmallest"

echo "************************************************************"
echo "2Q. Extend the above program to sort the array and then find the 2nd largestand the 2nd smallest element."
echo ""

arr=($(($RANDOM%999+100)) $(($RANDOM%999+100)) $(($RANDOM%999+100)) $(($RANDOM%999+100)) $(($RANDOM%999+100)))
  
echo "Array in original order"
echo ${arr[*]}
for ((i = 0; i<5; i++))
do
      
    for((j = 0; j<5-i-1; j++))
    do
      
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done
  
echo "Array in sorted order :"
echo ${arr[*]}

echo "${arr[*]}"
if [ "${#arr[@]}" -lt 2 ]
then
  echo Incoming array is not large enough >&2
  exit 1
fi

largest=${arr[0]}

secondGreatest='unset'

for((i=1; i < ${#arr[@]}; i++))
do
  if [[ ${arr[i]} > $largest ]] 
  then
    secondGreatest=$largest
    largest=${arr[i]}
  elif (( ${arr[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${arr[i]} > $secondGreatest ]]; }
  then
    secondGreatest=${arr[i]}
  fi
done

echo "secondGreatest = $secondGreatest"

Smallest=${arr[0]}

secondSmallest='unset'

for((i=1; i < ${#arr[@]}; i++))
do
  if [[ ${arr[i]} < $Smallest ]] 
  then
    secondSmallest=$Smallest
   Smallest=${arr[i]}
  elif (( ${arr[i]} != $Smallest )) && { [[ "$secondSmallest" = "unset" ]] || [[ ${arr[i]} < $secondSmallest ]]; }
  then
    secondSmallest=${arr[i]}
  fi
done

echo "secondSmallest = $secondSmallest"
echo "************************************************************"
echo "4Q. Write a Program to show Sum of three Integer adds to ZERO?"
echo ""
echo "Enter a numbers :"
read -a array
tot=0
for i in ${array[@]}; do
  tot=$((tot+i)) 
done
echo "Total: $tot"

echo "or"
echo 
"************************************************************"
echo "5Q. 5. Take a range from 0 – 100, find the digits that are repeated twice like 33, 77,
etc and store them in an array?"
echo "print the digits that are repeated twice like 33 , 77 etc"
declare -a arr

for(( i=1;i<100;i++ ))
do
number=$i
rem=$i%10
number=$i/10

if(( $rem == $number ))
then
arr[$i]=$i
fi
done

echo ${arr[@]}

echo "or"
