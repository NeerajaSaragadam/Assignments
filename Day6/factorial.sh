read -p "enter the number" num
factorial=1
for((i=1;i<=$num;i++))
do
((factorial*=i))
done
echo "factorial number is $factorial"
