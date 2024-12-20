#!/bin/bash

exec > /var/log/user-data.log 2>&1

# update the ubuntu machine
sudo apt update -y

# install node JS
sudo apt install nodejs -y

# install npm
sudo apt install npm -y

#clone repo
git clone https://github.com/Sking99/NodeLBApp.git /home/ubuntu/project

cd /home/ubuntu/project

# install packages
sudo npm install -y

# turn up the server
sudo npx pm2 start index.js
