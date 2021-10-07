read -p "enter a number" num
for((i=1;i<=num;i++))
do
t=$((2**i))
echo "2^n" $t
done
