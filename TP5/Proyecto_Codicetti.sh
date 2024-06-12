#!/bin/bash

function computadora_choice {
    choices=("Piedra" "Papel" "Tijera")
    random_index=$((RANDOM % 3))
    echo ${choices[$random_index]}
}

function determinar_ganador {
    usuario=$1
    computadora=$2

    if [ "${usuario,,}" == "${computadora,,}" ]; then
        echo "Empate, Elegí mejor"
    elif [ "${usuario,,}" == "piedra" ]; then
        if [ "${computadora,,}" == "tijera" ]; then
            echo "¡Ganaste capo, tremendo!"
        else
            echo "Perdiste maquina, nos vemos"
        fi
    elif [ "${usuario,,}" == "papel" ]; then
        if [ "${computadora,,}" == "piedra" ]; then
            echo "¡Ganaste capo, tremendo!"
        else
            echo "Perdiste maquina, nos vemos"
        fi
    elif [ "${usuario,,}" == "tijera" ]; then
        if [ "${computadora,,}" == "papel" ]; then
            echo "¡Ganaste capo, tremendo!"
        else
            echo "Perdiste maquina, nos vemos"
        fi
    else
        echo "Elección inválida. Elige entre Piedra, Papel o Tijera."
    fi
}

echo "Elige Piedra, Papel o Tijera:"
read eleccion_usuario

if [[ "${eleccion_usuario,,}" == "piedra" || "${eleccion_usuario,,}" == "papel" || "${eleccion_usuario,,}" == "tijera" ]]; then
    eleccion_computadora=$(computadora_choice)
    echo "La computadora eligió: $eleccion_computadora"
    determinar_ganador "${eleccion_usuario,,}" "${eleccion_computadora}"
else
    echo "Elección inválida. Por favor, elige entre Piedra, Papel o Tijera."
fi

