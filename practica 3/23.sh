#implemente un script que recorra un arreglo compuesto por números e imprima en pantalla sólo los números pares y que cuente sólo los números impares y los informe en pantalla al finalizar el recorrido.

num=(10 3 5 7 9 3 5 4)
cont=0

for n in "${num[@]}"; do
	if [ $((n%2)) -eq 0 ]; then
		echo $n
	else
		cont=$(( cont + 1))
	fi
done

echo $cont

exit
