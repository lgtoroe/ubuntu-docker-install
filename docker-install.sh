#!/bin/bash

# Script for Install docker-ce into Ubuntu Systems. Initial on Ubuntu 18.04.

echo Instalando dependencias && Updates.

sudo apt update && sudo apt upgrade -y

echo System is Updated.

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-cache madison docker-ce

echo Installing docker-ce latest version .....

sudo apt-get install docker-ce -y

# var = $whoami
# sudo usermod -aG docker $var

# echo User $var add to docker role. Remember that you will have to log out and back in for this to take effect!

echo Install finished.

# Unistall docker-ce.

# sudo apt-get purge docker-ce

# sudo rm -rf /var/lib/docker

