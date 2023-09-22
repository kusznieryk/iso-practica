#/bin/bash
# Realice un script que simule el comportamiento de una estructura de PILA e implemente las siguientes funciones aplicables sobre una estructura global definida en el script:
	#push: Recibe un parámetro y lo agrega en la pila 
	#pop: Saca un elemento de la pila
	#length: Devuelve la longitud de la pila
	#print: Imprime todos elementos de la pila
pila=()
push(){
	pila+=($1)
	return 0
}

pop(){
	ret="${pila[-1]}"
	unset 'pila[${#pila[@]}-1]'

	return 0
}
length(){
	ret=${#pila[*]}
	return 0
}

print(){
	echo ${pila[*]}
	return 0
}

# entro del mismo script y utilizando las funciones implementadas:
#Agregue 10 elementos a la pila
push 1
push 2
push 3
push 5
push 7
push 11
push 13
push 17
push 19
push 23

#Saque 3 de ellos
pop
pop
pop

#Imprima la longitud de la cola
length
echo $ret
#Luego imprima la totalidad de los elementos que en ella se encuentran
print
exit
