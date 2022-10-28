#!/bin/bash 
#######################
# For initial launch 
# 
#######################

# secret untar 
tar xvf src/secrets/secret.tar -C src/secrets

# build
sudo docker compose build

