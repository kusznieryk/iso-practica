# /bin/bash
#Modificar el script creado en el inciso anterior para que los números sean recibidos como parámetros. El script debe controlar que los dos parámetros sean enviados 

if [ $# -ne 3 ]; then
echo El script no recibio 2 parametros
exit 1
fi

op=$1

num1=$2
num2=$3

case $op in
	+)
		let suma=$num1+$num2
		echo $suma
		;;
	-)
		let resta=$num1-$num2
		echo $resta
		;;
	/)
		let div=$num1/$num2
		echo $div
		;;
	\*)
		let mul=$num1*$num2
		echo $mul
		;;
	*) 
		echo La operacion ingresada no es valida
		;;
esac

exit 0
