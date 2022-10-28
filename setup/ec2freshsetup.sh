#!/bin/bash 
##################################################
# Setup script for a new fresh debian ec2 instance
#
##################################################

sudo apt update -y

# git # 
sudo apt install git -y 

# docker # 
sudo apt remove docker docker-engine docker.io containerd runc -y

sudo apt install ca-certificates curl gnupg lsb-release -y 

sudo mkdir -p /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y 

## should be good for now. 

