#!/bin/bash

echo "You will be Minion..."

setxkbmap fi

sudo apt-get update

sudo apt-get upgrade -y

sudo apt-get install -y salt-minion

echo "master: xxx.xxx.xxx.xxx" | sudo tee /etc/salt/minion

sudo systemctl restart salt-minion.service

echo "Done."
