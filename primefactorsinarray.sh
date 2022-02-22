echo "Enter an integer:"
read input

if [ $input -lt 1 ]
then
	echo "Not a valid Number"
	exit 1
fi

count=0
flag=0
array=()

	echo "Prime factors of $input are: "

for (( i=2; i<$input; i++ ))
do
	if [ $(( input % i )) -eq 0 ]
	then
		factor=$i

		for (( j=2; j<=`expr $factor / 2`; j++ ))
		do
			flag=0

			if [ `expr $factor % $j` -eq 0 ]
			then
				flag=1
				break

			fi

		done
