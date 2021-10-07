
echo "enter 3 elements" 
for(( i = 0; i < 3; i++ ))
do
    read x
    array[i]=$x
done
sum=0
for(( i = 0; i < 1; i++ ))
do
    for(( j = i + 1; j < 2; j++ ))
    do
        for(( k = j + 1; k < 3; k++ ))
        do
            if(( array[i] + array[j] + array[k] == sum))
            then
                echo "The triplet is: ${array[i]} ${array[j]} ${array[k]}"
            else
                echo "something went wrong"
            fi
        done
    done
done