#/bin/nash
#Renombrando Archivos: haga un script que renombre solo archivos de un directorio pasado como parametro agregandole una CADENA, contemplando las opciones:
	#“-a CADENA”: renombra el fichero concatenando CADENA al final del nombre del archivo
	#“-b CADENA”: renombra el fichero concantenado CADENA al principio del nombre del archivo


if [ $# -ne 3 ]
then
	echo El script necesita 3 parametros para ejecutarse
	exit 1
fi

if [ ! -d $1 ]; then
	echo El direcotrio pasado como parametro no existe
fi

pushd $1
for archivo in $(ls); do
	if [ ! -f $archivo ]; then
       	  continue
	fi	

	if [ $2 = "-a" ]
	then
		 mv $archivo $archivo$3
	else
		 mv $archivo $3$archivo
	fi
done
popd
exit 
