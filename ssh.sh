#!/bin/bash

# Función para habilitar SSH
enable_ssh() {
    echo "Habilitando SSH..."
    sudo systemctl enable ssh
    sudo systemctl start ssh
    echo "SSH habilitado."
}

# Función para deshabilitar SSH
disable_ssh() {
    echo "Deshabilitando SSH..."
    sudo systemctl stop ssh
    sudo systemctl disable ssh
    echo "SSH deshabilitado."
}

# Menú de opciones
echo "Seleccione una opción:"
echo "1. Habilitar SSH"
echo "2. Deshabilitar SSH"
read -p "Ingrese su elección (1 o 2): " choice

case $choice in
    1)
        enable_ssh
        ;;
    2)
        disable_ssh
        ;;
    *)
        echo "Opción inválida. Por favor, seleccione 1 o 2."
        ;;
esac
