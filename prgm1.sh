echo "enter your KTU reg no :"
read regno
sum=0
#length = expr length $regno
for ((i=0;i<${#regno};i++))
do
       var="{regno:$i:1}"
       if [[  "$var"  =~ ^[0-9]+$ ]]
       then
          num=$(($num*10+$var))
        fi
done
for (( i=1;i<${#num};i=i+2))
do
#echo "${num:$i:1}"
sum = $(($sum+${num:$i:1}))
done
echo $sum
