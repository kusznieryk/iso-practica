# /bin/bash
#Realizar un script que le solicite al usuario 2 números, los lea de la entrada Standard e imprima la multiplicación, suma, resta y cual es el mayor de los números leídos.

echo Ingrese el primer numero
read num1
echo Ingrese el segundo numero
read num2

let suma=$num1+$num2
let resta=$num1-$num2
let div=$num1/$num2
let mul=$num1*$num2
echo $mul
echo $div
echo $suma
echo $resta

if [ $num1 -gt $num2 ] 
then 
	echo $num1
else 
	echo $num2
fi

exit 0
