heads_count=0
tails_count=0
while (( heads_count != 11 && tails_count != 11))
do
    echo -n "......flipping.....it's"
    toss=$(( RANDOM % 2 ))
    if [ $toss -eq 0 ]
    then
    echo " Heads "
    (( heads_count ++ ))
    else
    echo " Tails "
    (( tails_count ++ ))
    fi
    echo "Head wins $heads_count times and Tail wins $tails_count times"
done
echo "Game Over!"