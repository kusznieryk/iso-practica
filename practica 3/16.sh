#/bin/bash
#Realizar un script que reciba como parámetro una extensión y haga un reporte con 2 columnas, el nombre de usuario y la cantidad de archivos que posee con esa extensión. Se debe guardar el resultado en un archivo llamado reporte.txt

if [ $# -ne 1 ]; then
	echo El script necesita recibir una extension como parametro
	exit 1
fi

cantidad=$(find /home/$(whoami)/ -type f -name "*.$1" | wc -l)
echo "$(whoami) , $cantidad" > /tmp/reporte.txt
exit
