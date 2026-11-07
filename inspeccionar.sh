#!/bin/bash

# Verificar la ruta.
if [ $# -ne 1 ]; then
    echo "Error: Se requiere exactamente una ruta."
    echo "Uso: $0 <ruta de archivo o directorio>"
    exit 1
fi

ruta=$1

# revisar si existe.
if [ ! -e "$ruta" ]; then
    echo "Error: La ruta '$ruta' no existe en el sistema."
    exit 1
fi

# imprimir la ruta y los requisitos.
echo "Información de la ruta: '$ruta'"

# checar si es archivo o directorio.
if [ -f "$ruta" ]; then
    echo "Tipo: Es un archivo regular."
elif [ -d "$ruta" ]; then
    echo "Tipo: Es un directorio."
else
    echo "Tipo: Es otro tipo de archivo especial."
fi

# checar permisos de lectura
if [ -r "$ruta" ]; then
    echo "Permiso de lectura: Tienes permiso de lectura "
else
    echo "Permiso de lectura: No tienes permiso de lectura "
fi

# checar permisos de escritura
if [ -w "$ruta" ]; then
    echo "Permiso de escritura: Tienes permiso de escritura"
else
    echo "Permiso de escritura: No tienes permiso de escritura"
fi:q
