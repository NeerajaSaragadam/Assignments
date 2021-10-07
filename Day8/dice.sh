declare -A dictionary=(
                            [1]=0
                            [2]=0
                            [3]=0
                            [4]=0
                            [5]=0
                            [6]=0
                        )
max_count=10
while(( 1 ))
do
    result=$(( RANDOM % 6 + 1 ))
    (( dictionary[$result]++))

    if(( dictionary[$result] == max_count))
    then
        break
    fi

done
 
most_frequent_number=$(( RANDOM % 6 + 1 ))
least_frequent_number=$(( RANDOM % 6 + 1 ))

echo "The numbers of the dice and their corresponding frequencies are:"

for number in ${!dictionary[@]}
do

    if(( dictionary[$number] >= dictionary[$most_frequent_number] ))
    then
        most_frequent_number=$number
    fi

    if(( dictionary[$number] <= dictionary[$least_frequent_number] ))
    then
        least_frequent_number=$number
    fi

    echo $number " " ${dictionary[$number]}
done

echo "The number that reached maximum times is $most_frequent_number"
echo "The number that reached minimum times is $least_frequent_number"