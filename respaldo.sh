#!/bin/bash

# Variable para guardar el nombre de la carpeta
dir_name="$HOME/respaldos_logs"

# Comprobar que no exista el directorio y crearlo en dicho caso
if [ ! -d "$dir_name" ]; then
    mkdir "$dir_name"
fi

# Contador para guardar el número de archivos procesados
count=0

# Ciclo for para recorrer todos los archivos que cumplan la condicion
for file in *.log; do

    # Asegurarnos de copiar un archivo
    if [ -f "$file" ]; then

        # Copiamos el archivo actual del for
        cp "$file" "${dir_name}/$(date +%Y%m%d)_${file}"
        ((count++))
    fi

done

# Imprimir el numero de archivos procesados
echo -e "\tArchivos procesados: $count"
