# Crear un script que reciba como parámetro el nombre de un archivo e informe si el mismo existe o no, y en caso afirmativo indique si es un directorio o un archivo. En caso de que no exista el archivo/directorio cree un directorio con el nombre recibido como parámetro.

if [ $# -ne 1 ]
then
	echo El Script necesita un archivo como parametro
	exit 1
fi

if [ -e $1 ]
then
	echo El archivo existe
	if [ -f $1 ]
	then
		       echo Es un Archivo
	else
		echo Es un directorio	       
	fi
else
	$(touch $1)
fi

exit 0
