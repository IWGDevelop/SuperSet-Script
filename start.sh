#!/bin/bash

# Initialize a local Superset Instance
# Assuming your local superset container is already running...

# Setup your local admin account
sudo docker exec -it superset superset fab create-admin \
              --username admin \
              --firstname Superset \
              --lastname Admin \
              --email admin@superset.com \
              --password admin

# Migrate local DB to latest
sudo docker exec -it superset superset db upgrade

# Load Examples

read -p "¿Desea instalar datos de ejemplo? (s/n): " eleccion

# Convertir la elección a minúsculas
eleccion=${eleccion,,}

if [ "$eleccion" == "s" ]; then
    # Cargar Ejemplos
    sudo docker exec -it superset superset load_examples
    echo "Se han instalado los datos de ejemplo."
else
    echo "No se instalarán datos de ejemplo."
fi

# Setup roles
sudo docker exec -it superset superset init