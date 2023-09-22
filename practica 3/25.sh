#/bin/bash
#Realice un script que agregue en un arreglo todos los nombres de los usuarios del sistema pertenecientes al grupo “users”. Adicionalmente el script puede recibir como parametro
	#“-b n”: Retorna el elemento de la posición n del arreglo si el mismo existe. Caso contrario, un mensaje de error.
	#“-l”: Devuelve la longitud del arreglo
	#“-i”: Imprime todos los elementos del arreglo en pantalla

arr=($(cat /etc/group | grep sys | cut -d: -f4 | tr ',' ' '))
if [ $# -gt 0 ]; then
	if [ $1 = '-i' ]; then
		echo ${arr[@]}
	elif [ $1 = '-l' ]; then
		echo ${#arr[@]}
	elif [ $1 = '-b' ] && [ $# -eq 2 ]; then
		if [ $2 -lt ${#arr[@]} ]; then
			echo ${arr[$2]} 
		fi
	else
		echo Opcion invalida
	fi
fi
exit
