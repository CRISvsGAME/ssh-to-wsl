#!/bin/bash

sudo apt-get update
sudo apt-get -y install openssh-server
sudo systemctl enable ssh
sudo systemctl start ssh
