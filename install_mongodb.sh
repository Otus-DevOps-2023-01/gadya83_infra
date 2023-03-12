#!/bin/bash
sudo apt update
sudo apt install mongodb -y
systemctl -q is-active mongodb && echo "$SERVICE mongodb was active"
sudo systemctl start mongodb
sudo systemctl enable mongodb
sudo systemctl enable mongod
