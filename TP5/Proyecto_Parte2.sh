#!/bin/bash


echo "Ingrese un nombre:"
read nombre


respuesta=$(curl -s "https://api.genderize.io?name=$nombre")


genero=$(echo $respuesta | jq -r '.gender')


if [ "$genero" != "null" ]; then
    echo "El género del nombre '$nombre' es: $genero"
else
    echo "No se pudo determinar el género del nombre '$nombre'."
fi

