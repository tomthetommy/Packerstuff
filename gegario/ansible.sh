#!/bin/bash
sudo apt-get update
sudo apt-get install ansible apache2 -y
if [[ -f /var/www/html/index.html ]]; then sudo rm /var/www/html/index.html; fi
sudo mkdir /var/www/html/css -p
sudo wget "https://s3-eu-west-1.amazonaws.com/helloawscode/css/main.css" -O /var/www/html/css/main.css
sudo wget "https://s3-eu-west-1.amazonaws.com/helloawscode/index.php" -O /var/www/html/index.php

