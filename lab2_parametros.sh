#!/bin/bash

# Mostrar informacion de los parametros recibidos
echo "Script ejecutandose: $0"
echo "Parametros recibidos: $#"
echo "Parametros preservando espacios: "$@""

# Validacion de al menos 2 parametros
if [ "$#" -lt 2 ]; then
    echo "Uso: $0 <origen> <destino>"
fi

# Verificar un archivo inexistente y redirigir el error a error.log
ls archivo_inexistente.txt 2> error.log

# Imprimir el codigo de salida del comando anterior
echo "Codigo salida comando: $?"
