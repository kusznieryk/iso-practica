#Dada la definición de 2 vectores del mismo tamaño y cuyas longitudes no se conocen.
#implementar la suma elemento a elemento entre ambos vectores y que la misma sea impresa en pantalla de la siguiente manera
	#La suma de los elementos de la posición 0 de los vectores es 6
	#La suma de los elementos de la posición 1 de los vectores es 178
	#...
	#La suma de los elementos de la posición 4 de los vectores es 10

vector1=( 1 80 65 35 2 )
vector2=( 5 98 3 41 8 )
it=0

while [ $it -lt "${#vector1[@]}" ]; do
	echo "La suma de los elementos de la posición $it de los vectores es $((vector1[$it] + vector2[$it])) "
	it=$((it+1))
done

exit
