#!/bin/bash

npm-proxy-cache -ef -h 0.0.0.0 -p 8081 -t 600000 --storage cache_npm_proxy
