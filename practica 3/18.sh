#bin/bash
# Crear un script que verifique cada 10 segundos si un usuario se ha loqueado en el sistema (el nombre del usuario será pasado por parámetro). Cuando el usuario finalmente se loguee, el programa deberá mostrar el mensaje ”Usuario XXX logueado en el sistema” y salir.

if [ $# -ne 1 ]; then
	echo Debe de pasar el nombre del usuario para que fincione el script
	exit 1
fi

usuario_valido=`cat /etc/passwd | cut -d: -f1 | grep -w $1| wc -l`

echo $usuario_valido

if [ $usuario_valido -eq 0 ]; then
	echo El usuario ingresado no es valido
	exit 2
fi
while true; do
	entro=`who| cut -d' ' -f1 | grep $1 | wc -l`
	if [ $entro -gt 0 ];then
		echo El usuario $1 ha ingresado
		break
	fi
	sleep 10
done
exit
