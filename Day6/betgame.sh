money=100
bet_amount=1
bet_count=0
won_count=0
while(( money != 0 && money != 200 ))
do
    echo -n "The bet is "
    bet=$(( RANDOM % 2 ))
    if ((bet == 1))
    then
        echo "won"
        (( money += bet_amount ))
        (( won_count++))
    else
        echo "lost"
        ((money -= bet_amount ))
    fi
    (( bet_count++ ))

done
echo "The final money is $money"
echo "No of bets made are $bet_count and no of times won are $won_count"