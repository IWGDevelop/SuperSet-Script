#!/bin/bash

# Initialize a local Superset Instance
# Assuming your local superset container is already running...

# Setup your local admin account
sudo docker exec -it superset superset fab create-admin \
              --username admin \
              --firstname Superset \
              --lastname Admin \
              --email admin@moratoo.com \
              --password admin

# Migrate local DB to latest
sudo docker exec -it superset superset db upgrade

# Load Examples
sudo docker exec -it superset superset load_examples

# Setup roles
sudo docker exec -it superset superset init