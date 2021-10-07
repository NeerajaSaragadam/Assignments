read -p "enter the number" num
h1=0
for((i=1;i<=num;i++))
do
temp=$(( 1/$i ))
h1=$(($h1+$temp))
done
echo "harmonic number is $h1"