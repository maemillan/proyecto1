
function pregunta
{
   echo "How many files are there in the current directory?"
   read numero
}

function obtiene_lineas
{
   lineas=$(ls -l | wc -l)
   let lineas=lineas-1
} 

respuesta=0

obtiene_lineas

while [[ $respuesta -eq 0 ]] 
do
    pregunta
    if [ $lineas -eq $numero ]
    then
       echo "Congratulations, you did it !"
       let respuesta=1
    else
       if [ $numero -lt $lineas ]
       then
           echo "Incorrect...too low !!"
       else
           echo "Incorrect...too high !!"
       fi
    fi
done
