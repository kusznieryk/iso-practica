#/bin/bash
#Implemente la función productoria dentro de este script, cuya tarea sea multiplicar todos los números del arreglo

num=(10 3 5 7 9 3 5 4)

productoria(){
	arr=($@)
	acc=1
	for elemento in "${arr[@]}"; do
		acc=$((acc * elemento))
      	done

	echo $acc
	return 0
}
productoria "${num[@]}"
exit
