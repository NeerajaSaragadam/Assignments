read -p "enter lower bound: " lower
read -p "enter upper bound: " upper

for (( number = lower; number <= upper; number++ ))
do  
    is_prime=1
    for ((f = 2; f <= number/2; f++))
    do
        if (( number % f == 0))
        then
        is_prime=0
        break
        fi
    done
    if((is_prime))
    then    
        echo "$number is prime"
    fi
done
