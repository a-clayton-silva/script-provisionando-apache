#!/bin/bash
sudo apt update
sudo apt install apache2 unzip -y
sudo ufw allow 'Apache'
sudo ufw disable
sudo ufw --force enable
sudo rm -R /var/www/html/*
cd /tmp/
git clone https://github.com/denilsonbonatti/linux-site-dio.git
cd /tmp/linux-site-dio/
cp -R * /var/www/html/
sudo chown -R $USER:$USER /var/www/html
sudo chmod -R 755 /var/www/html
sudo systemctl restart apache2
sudo systemctl reload apache2
sudo systemctl enable apache2
