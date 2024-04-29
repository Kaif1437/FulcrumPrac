#!/bin/bash

ssh kaif@192.168.225.80 << 'ENDSSH'

    sudo apt update
    sudo apt install -y nginx

    sudo mv /var/www/html/index.html /var/www/html/index.html

    sudo sed -i 's/listen 80;/listen 8081;/g' /etc/nginx/sites-available/default

    sudo systemctl restart nginx

ENDSSH
