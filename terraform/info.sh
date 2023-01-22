#!/bin/bash

sudo apt-get update 
sudo apt -y install apache2 php libapache2-mod-php

echo '<!doctype html><html><body><h1>If you see this apache running successfully!</h1></body></html>' | sudo tee /var/www/html/index.html


