# /bin/bash
#Modificar el script creado en el inciso anterior para que los números sean recibidos como parámetros. El script debe controlar que los dos parámetros sean enviados 

if [ $# -ne 2 ]; then
echo El script no recibio 2 parametros
exit 1
fi

num1=$1
num2=$2
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
