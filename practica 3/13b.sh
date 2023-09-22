# /bin/bash

#Crear un script que muestre 3 opciones al usuario: Listar, DondeEstoy y QuienEsta. Según la opción elegida se le debe mostrar
	#Listar: lista el contenido del directoria actual
	#DondeEstoy: muestra el directorio donde me encuentro ubicado.
	#QuienEsta: muestra los usuarios conectados al sistema.

select op in Listar DondeEstoy QuienEsta Salir
  do
    case $op in
      Listar)
	      echo $(ls ./)
	;;
      DondeEstoy)
	      echo $(pwd)
	;;
      QuienEsta)
	      echo $(who -q)
	;;
      Salir)
        break
	;;
     esac
  done
