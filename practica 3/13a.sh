# bin/bash
#realizar un script que visualice por pantalla los números del 1 al 100 así como sus cuadrados


i=1
while [ $i -lt 100 ]
do
  echo numero
  echo $i 
  echo Con cuadrado igual a
  echo $(($i*$i))
  let i++
done
echo "Fin del while: i => $i"

