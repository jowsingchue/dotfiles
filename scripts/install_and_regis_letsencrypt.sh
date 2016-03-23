#!/bin/bash

sudo git clone https://github.com/letsencrypt/letsencrypt /opt/letsencrypt
cd /opt/letsencrypt
sudo git pull
sudo ./letsencrypt-auto certonly --standalone  # then follow GUI screen
