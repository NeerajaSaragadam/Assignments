
result=1
i=0
while (( result < 256 ))
do
    result=$(( 2 ** i ))
    echo "2^$i = $result"
    ((i++))
done
