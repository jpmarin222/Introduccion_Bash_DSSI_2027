#!/bin/bash

# Validación: verificar que se hayan ingresado exactamente 2 argumentos
if [ "$#" -ne 2 ]; then
    echo "Error: Debe ingresar exactamente dos números enteros."
    echo "Uso: $0 <numero1> <numero2>"
    exit 1
fi
#validar
si="^[0-9]+$"
# ¿ambos valores son numeros?
if ! [[ $1 =~ $si ]]; then
    echo "Error: El primer argumento '$1' no es un número válido."
    exit 1
fi

if ! [[ $2 =~ $si ]]; then
    echo "Error: El segundo argumento '$2' no es un número válido."
    exit 1
fi

# Asignar los parámetros a variables
num1=$1
num2=$2

# Operaciones
suma=$((num1 + num2))
dif=$((num1 - num2))
mult=$((num1 * num2))

# Imprimir resultados
echo "Suma: $suma"
echo "Diferencia: $dif"
echo "Producto: $mult"
