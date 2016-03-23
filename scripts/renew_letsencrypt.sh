#!/bin/bash


cd /opt/letsencrypt
sudo git pull
sudo ./letsencrypt-auto renew
